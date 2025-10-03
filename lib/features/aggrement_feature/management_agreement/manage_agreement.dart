import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/utils/searchbutton.dart';
import '../../inspection_feature/model/property_for_inspection.dart';
import '../providers/search_property_foragreement.dart';

class ManangeAgreementView extends HookConsumerWidget {
  const ManangeAgreementView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = useRef(GlobalKey<FormState>());
    // final propertyId = useState<String?>(null);
    final showList = useState(false);
    final _navigated = useState(false);
    final state = ref.watch(searchPropertyForAgreementProvider);
    final bool isLoading =
        state.isLoading || state.isRefreshing || state.isReloading;
    final params = ref.watch(updateManagementAgreementParamProvider);
    final updateParams =
        ref.read(updateManagementAgreementParamProvider.notifier);

    useEffect(() {
      ref.listenManual(getManagementAgreementProvider, (_, next) {
        next.whenOrNull(data: (agreementData) {
          if (_navigated.value) return;
          if (agreementData != null) {
            if (agreementData.agreementStatus != null) {
              final int status = agreementData.agreementStatus ?? 1;
              _navigated.value = true;
              switch (status) {
                case 2:
                  context.pushNamed('manage-agreement-1');
                  break;
                case 4:
                  context.pushNamed('manage-agreement-3');
                  break;
                case 5:
                  context.pushNamed('manage-agreement-4');
                  break;
                case 6:
                  context.pushNamed('manage-agreement-5');
                  break;
                case 7:
                  context.pushNamed('manage-agreement-6');
                  break;
                case 9:
                  context.pushNamed('manage-agreement-tab', pathParameters: {
                    'propertyId': agreementData.propertyUId ?? "",
                    'agreementType': '1'
                  });
                  break;
                default:
              }
            }
          }
        });
      });
      return null;
    }, []);

    return PopScope(
      onPopInvokedWithResult: (bool result, T) {
        updateParams.dispose();
        ref.invalidate(updateManagementAgreementParamProvider);
        ref.invalidate(getManagementAgreementProvider);
      },
      child: PageLoadingWidget(
        isLoading: ref.watch(updateManagementAgreementProvider).isLoading,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Manage Agreement'),
              centerTitle: true,
              automaticallyImplyLeading: true,
            ),
            backgroundColor: const Color(0XFFf2f6f7),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
              child: Form(
                key: _formKey.value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SubHeadingText(text: 'Property'),
                    12.verticalSpace,
                    CustomSearchFiled<PropertyForInspection>(
                      isLoading: isLoading,
                      onClear: () {
                        showList.value = false;
                        updateParams.dispose();
                        ref.invalidate(updateManagementAgreementParamProvider);
                        ref.invalidate(getManagementAgreementProvider);
                        _navigated.value = false;
                      },
                      showList: showList.value,
                      // controller: searchController,
                      items: state.valueOrNull ?? [],
                      onSearch: (val) {
                        showList.value = true;
                        ref
                            .read(searchPropertyForAgreementProvider.notifier)
                            .searchProperty(search: val);
                      },
                      onSelected: (val) {
                        if (val != null) {
                          ref
                              .read(getManagementAgreementProvider.notifier)
                              .getManagementAgreement(val.propertyUId ?? "");
                        }
                      },
                      displayString: (item) => item.name ?? 'No Name',
                    ),
                    AsyncWidget(
                        value: ref.watch(getManagementAgreementProvider),
                        data: (agreementData) {
                          if (agreementData == null) {
                            return const SizedBox.shrink();
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              16.verticalSpace,
                              Divider(
                                color: Colors.grey.withValues(alpha: 0.5),
                              ),
                              16.verticalSpace,
                              HeadingText(
                                  text: 'Primary Property Owner(s)'
                                      .toUpperCase()),
                              20.verticalSpace,
                              AppTextFiled(
                                controller: updateParams.fNameController,
                                hintText: 'First Name',
                                lable: 'First Name',
                                onSaved: (val) {
                                  updateParams.updateFName(val!);
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              15.verticalSpace,
                              AppTextFiled(
                                controller: updateParams.lNameController,
                                hintText: 'Last Name',
                                lable: 'Last Name',
                                onSaved: (val) {
                                  updateParams.updateLName(val!);
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              15.verticalSpace,
                              AppTextFiled(
                                maxLength: 10,
                                controller: updateParams.phoneController,
                                hintText: 'Phone Number',
                                lable: 'Phone',
                                onSaved: (val) {
                                  updateParams.updatePhone(val!);
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              15.verticalSpace,
                              AppTextFiled(
                                controller: updateParams.contactEmailController,
                                hintText: 'Email address',
                                lable: 'Email',
                                onSaved: (val) {
                                  updateParams.updateEmail(val!);
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              15.verticalSpace,
                              AppTextFiled(
                                controller: updateParams.addressController,
                                hintText: 'Address',
                                lable: 'Address',
                                onSaved: (val) {
                                  // updateParams.updateAddress(val!);
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },

                              ),
                              15.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SubHeadingText(
                                      text: 'Registered for GST'),
                                  CustomCupertinoToggle(
                                    initialValue: true,
                                    trueLabel: 'Y',
                                    falseLabel: 'N',
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                              15.verticalSpace,
                              AppTextFiled(
                                controller: updateParams.abnController,
                                hintText: 'ABN',
                                lable: 'ABN',
                                onSaved: (val) {
                                  updateParams.updateABN(val!);
                                },
                              ),
                              15.verticalSpace,
                              AppTextFiled(
                                isEditable: false,
                                hintText: 'Company Name',
                                lable: 'Company Name',
                                onSaved: (val) {
                                  // updateParams.updateParam((e) => e.copyWith(
                                  //     PrimarycontactModel:
                                  //         params.PrimarycontactModel?.copyWith(
                                  //             companyName: val)));
                                },
                              ),
                              30.verticalSpace,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Container(
                                  width: double.infinity,
                                  height: 56,
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      updateParams.addNewOwner();
                                    },
                                    icon: const Icon(Icons.add,
                                        color: Color(
                                          0xFF003F5C,
                                        ),
                                        size: 20),
                                    label: const Text(
                                      'Add New Owner',
                                      style: TextStyle(
                                        fontFamily: "Plus Jakarta Sans",
                                        color: Color(0xFF164C63),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Color(0xFF164C63)),
                                      shape: const StadiumBorder(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 14),
                                    ),
                                  ),
                                ),
                              ),
                              16.verticalSpace,
                              Divider(
                                color: Colors.grey.withValues(alpha: 0.5),
                              ),
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final ownerCtrl =
                                      updateParams.ownersControllers[index];
                                  return Column(
                                    children: [
                                      15.verticalSpace,
                                      AppTextFiled(
                                        controller: ownerCtrl?.fName,
                                        hintText: 'First Name',
                                        lable: 'First Name',
                                        onSaved: (val) {
                                          updateParams.updateOwnerFName(
                                              index, val!);
                                        },
                                      ),
                                      15.verticalSpace,
                                      AppTextFiled(
                                        controller: ownerCtrl?.lName,
                                        hintText: 'Last Name',
                                        lable: 'Last Name',
                                        onSaved: (val) {
                                          updateParams.updateOwnerLName(
                                              index, val!);
                                        },
                                      ),
                                      15.verticalSpace,
                                      AppTextFiled(
                                        controller: ownerCtrl?.phone,
                                        maxLength: 10,
                                        hintText: 'Phone Number',
                                        lable: 'Phone',
                                        onSaved: (val) {
                                          updateParams.updateOwnerPhone(
                                              index, val!);
                                        },
                                      ),
                                      15.verticalSpace,
                                      AppTextFiled(
                                        controller: ownerCtrl?.email,
                                        hintText: 'Email address',
                                        lable: 'Email',
                                        onSaved: (val) {
                                          updateParams.updateOwnerEmail(
                                              index, val!);
                                        },
                                      ),
                                      30.verticalSpace,
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          // height: 50,
                                          width: 150,
                                          child: SecondaryButton(
                                              title: "Remove",
                                              onClick: () {
                                                updateParams.removeOwner(index);
                                              }),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return Divider(
                                    color: Colors.grey.withValues(alpha: 0.5),
                                  );
                                },
                                itemCount: params.ContactlistModel?.length ?? 0,
                              ),
                              // 16.verticalSpace,
                              // Divider(
                              //   color: Colors.grey.withValues(alpha: 0.5),
                              // ),
                              16.verticalSpace,
                              HeadingText(
                                  text: 'Property Details'.toUpperCase()),
                              const SizedBox(height: 16),
                              AppTextFiled(
                                isEditable: false,
                                controller: updateParams.addressController2,
                                hintText: 'Search for Address',
                                lable: 'Address',
                                onSaved: (val) {
                                  updateParams.updateAddress(val!);
                                },
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SubHeadingText(
                                      text: 'This Property is Unfurnished'),
                                  CustomCupertinoToggle(
                                    initialValue:
                                        updateParams.propertyUnfurnished
                                            ? true
                                            : false,
                                    trueLabel: 'Y',
                                    falseLabel: 'N',
                                    onChanged: (val) {
                                      updateParams
                                          .updatePropertyUnfurnished(val);
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SubHeadingText(
                                      text:
                                          "Furnished (Inventory prepared by)"),
                                  CustomCupertinoToggle(
                                    initialValue: updateParams.propertyFurnished
                                        ? true
                                        : false,
                                    trueLabel: 'Y',
                                    falseLabel: 'N',
                                    onChanged: (val) {
                                      updateParams.updatePropertyFurnised(val);
                                    },
                                  ),
                                ],
                              ),
                              16.verticalSpace,
                              Divider(
                                color: Colors.grey.withValues(alpha: 0.5),
                              ),
                              16.verticalSpace,
                              const HeadingText(text: 'Rent'),
                              const SizedBox(height: 16),
                              AppTextFiled(
                                controller: updateParams.rentController,
                                hintText: '0',
                                lable:
                                    'Rent at which the property to be offered (including GST if any)',
                                onSaved: (val) {
                                  if (val == null || val.isEmpty) return;
                                  updateParams.updateRent(val);
                                },
                                onChanged: (val) {
                                  final rentValue = int.tryParse(val) ?? 0;
                                  final bondValue = rentValue * 4;
                                  updateParams.bondController.text =
                                      bondValue.toString();
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              AppTextFiled(
                                controller: updateParams.bondController,
                                hintText: '0',
                                lable: 'Bond',
                                onSaved: (val) {
                                  if (val == null || val.isEmpty) return;
                                  updateParams.updateBond(val);
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              24.verticalSpace,
                              PrimaryButton(
                                  title: 'Next',
                                  onClick: () {
                                    if (_formKey.value.currentState!
                                        .validate()) {
                                      _formKey.value.currentState!.save();
                                      ref
                                          .read(
                                              updateManagementAgreementProvider
                                                  .notifier)
                                          .updatePropertyDetails();
                                    }
                                  }),
                              24.verticalSpace
                            ],
                          );
                        })
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
