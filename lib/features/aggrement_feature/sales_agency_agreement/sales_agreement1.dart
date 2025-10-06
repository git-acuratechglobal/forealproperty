import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement2.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';
import '../../../core/utils/appbutton.dart';
import '../../../core/utils/searchbutton.dart';
import '../../inspection_feature/model/property_for_inspection.dart';
import '../providers/search_property_foragreement.dart';
import 'widgets/heading_text.dart';
import 'widgets/sub_heading_text.dart';

class SalesAgreement1 extends HookConsumerWidget {
  const SalesAgreement1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final showList = useState(false);
    final state = ref.watch(searchPropertyForAgreementProvider);
    final bool isLoading =
        state.isLoading || state.isRefreshing || state.isReloading;
    final updateParam = ref.read(updateSalesAgreementParamProvider.notifier);
    final paramData = ref.watch(updateSalesAgreementParamProvider);
    final _navigated = useState(false);
    ref.listen(getSalesAgreementProvider, (_, next) {
      next.whenOrNull(data: (agreementData) {
        if (_navigated.value) return;
        if (agreementData != null) {
          if (agreementData.agreementStatus != null) {
            final int status = agreementData.agreementStatus ?? 1;
            _navigated.value = true;
            switch (status) {
              case 2:
                context.pushNamed('sales-agreement-2');
                break;

              case 3:
                context.pushNamed('sales-agreement-3');
                break;

              case 4:
                context.pushNamed('sales-agreement-4');
                break;
              case 5:
                context.pushNamed('sales-agreement-5');
                break;
              case 6:
                context.pushNamed('sales-agreement-6');
                break;
              case 9:
              case 10:
                context.pushNamed('manage-agreement-tab', pathParameters: {
                  'propertyId': agreementData.propertyUId ?? "",
                  'agreementType': '3'
                });
                break;
            }
          }
        }
      });
    });

    return PopScope(
      onPopInvokedWithResult: (bool result, T) {
        updateParam.dispose();
        ref.invalidate(updateSalesAgreementParamProvider);
        ref.invalidate(getSalesAgreementProvider);
      },
      child: PageLoadingWidget(
        isLoading: ref.watch(updateSalesAgreementProvider).isLoading,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Sales Agreement'),
            centerTitle: true,
            automaticallyImplyLeading: true,
          ),
          backgroundColor: const Color(0XFFf2f6f7),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubHeadingText(text: 'Property'.toUpperCase()),
                  12.verticalSpace,
                  CustomSearchFiled<PropertyForInspection>(
                    isLoading: isLoading,
                    onClear: () {
                      _navigated.value = false;
                      showList.value = false;
                      updateParam.dispose();
                      ref.invalidate(updateSalesAgreementParamProvider);
                      // _navigated.value = false;
                      ref.invalidate(getSalesAgreementProvider);
                    },
                    showList: showList.value,
                    items: state.valueOrNull ?? [],
                    onSearch: (val) {
                      showList.value = true;
                      ref
                          .read(searchPropertyForAgreementProvider.notifier)
                          .searchProperty(search: val);
                    },
                    onSelected: (val) {
                      if (val != null) {
                        showList.value = false;
                        ref
                            .read(getSalesAgreementProvider.notifier)
                            .getSalesAgreement(val.propertyUId ?? "");
                      }
                    },
                    displayString: (item) => item.name ?? 'No Name',
                  ),
                  16.verticalSpace,
                  AsyncWidget(
                      value: ref.watch(getSalesAgreementProvider),
                      data: (data) {
                        if (data == null) return const SizedBox.shrink();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(
                              color: Color(0xffE2E2E2),
                            ),
                            16.verticalSpace,
                            HeadingText(
                              text: 'Primary Property Owner(s)'.toUpperCase(),
                            ),
                            20.verticalSpace,
                            AppTextFiled(
                              controller: updateParam.fNameController,
                              lable: 'First Name',
                              hintText: 'First Name',
                              onSaved: (val) {
                                updateParam.updateFName(val);
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
                              controller: updateParam.lNameController,
                              lable: 'Last Name',
                              hintText: 'Last Name',
                              onSaved: (val) {
                                updateParam.updateLName(val);
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
                              inputType: TextInputType.phone,
                              controller: updateParam.phoneController,
                              maxLength: 10,
                              lable: 'Phone',
                              hintText: 'Phone Number',
                              onSaved: (val) {
                                updateParam.updatePhone(val);
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
                              inputType: TextInputType.emailAddress,
                              controller: updateParam.contactEmailController,
                              lable: 'Email',
                              hintText: 'Email address',
                              onSaved: (val) {
                                updateParam.updateEmail(val);
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
                              controller: updateParam.addressController,
                              lable: 'Address',
                              hintText: 'Address',
                              onSaved: (val) {
                                updateParam.updateAddress(val);
                              },
                            ),
                            15.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SubHeadingText(
                                    text: 'Registered for GST'),
                                CustomCupertinoToggle(
                                  initialValue: false,
                                  trueLabel: 'Y',
                                  falseLabel: 'N',
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                            15.verticalSpace,
                            AppTextFiled(
                              controller: updateParam.abnController,
                              lable: 'ABN',
                              hintText: 'ABN',
                              onSaved: (val) {
                                if(val!=null&&val.isNotEmpty)
                                updateParam.updateABN(val);
                              },
                            ),
                            15.verticalSpace,
                            const AppTextFiled(
                                isEditable: false,
                                lable: 'Company Name',
                                hintText: 'Company Name'),
                            20.verticalSpace,
                            SecondaryButton(
                                title: "+ Add New Owner",
                                onClick: () {
                                  updateParam.addNewOwner();
                                }),
                            24.verticalSpace,
                            ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                final ownerCtrl =
                                    updateParam.propertyOwnerControllers[index];
                                return Column(
                                  children: [
                                    15.verticalSpace,
                                    AppTextFiled(
                                      controller: ownerCtrl?.fName,
                                      hintText: 'First Name',
                                      lable: 'First Name',
                                      onSaved: (val) {
                                        updateParam.updateOwnerFName(
                                            index, val!);
                                      },
                                    ),
                                    15.verticalSpace,
                                    AppTextFiled(
                                      controller: ownerCtrl?.lName,
                                      hintText: 'Last Name',
                                      lable: 'Last Name',
                                      onSaved: (val) {
                                        updateParam.updateOwnerLName(
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
                                        updateParam.updateOwnerPhone(
                                            index, val!);
                                      },
                                    ),
                                    15.verticalSpace,
                                    AppTextFiled(
                                      controller: ownerCtrl?.email,
                                      hintText: 'Email address',
                                      lable: 'Email',
                                      onSaved: (val) {
                                        updateParam.updateOwnerEmail(
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
                                              updateParam.removeOwner(index);
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
                              itemCount:
                                  paramData.ContactlistModel?.length ?? 0,
                            ),
                            24.verticalSpace,
                            PrimaryButton(
                                title: 'Next',
                                onClick: () {
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState!.save();
                                    ref
                                        .read(updateSalesAgreementProvider
                                            .notifier)
                                        .updateSalesForm1(data.propertyUId??'');
                                  }
                                }),
                            24.verticalSpace
                          ],
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
