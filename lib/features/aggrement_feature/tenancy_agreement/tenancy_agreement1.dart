import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/utils/searchbutton.dart';
import '../../inspection_feature/model/property_for_inspection.dart';
import '../model/tenant_contact_model.dart';
import '../providers/search_property_foragreement.dart';

class TenancyAgreement1 extends HookConsumerWidget {
  const TenancyAgreement1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final showList = useState(false);
    final showContactList = useState(false);
    final _navigated = useState(false);
    final state = ref.watch(searchPropertyForAgreementProvider);
    final bool isLoading =
        state.isLoading || state.isRefreshing || state.isReloading;
    final tenantAgreement = ref.watch(updateTenantInAgreementProvider);

    final updateTenantAgreement =
        ref.read(updateTenantInAgreementProvider.notifier);
    final conatctSearch = ref.watch(getSearchContactProvider);
    ref.listen(getTenancyAgreementProvider, (_, next) {
      next.whenOrNull(data: (agreementData) {
        if (_navigated.value) return;
        if (agreementData != null) {
          if (agreementData.agreementStatus != null) {
            final int status = agreementData.agreementStatus ?? 1;
            _navigated.value = true;
            switch (status) {
              case 2:
                context.pushNamed('tenancy-agreement-2');
                break;

              case 3:
                context.pushNamed('tenancy-agreement-3');
                break;

              case 4:
                context.pushNamed('tenancy-agreement-4');
                break;
              case 6:
                context.pushNamed('manage-agreement-tab', pathParameters: {
                  'propertyId': agreementData.propertyUId ?? "",
                  'agreementType': '2'
                });
                break;
            }
          }
        }
      });
    });

    return PopScope(
      onPopInvokedWithResult: (bool result, T) {
        updateTenantAgreement.dispose();
        ref.invalidate(getTenancyAgreementProvider);
        ref.invalidate(updateTenantInAgreementProvider);
      },
      child: PageLoadingWidget(
        isLoading: ref.watch(updateTenancyAgreementProvider).isLoading,
        child: Scaffold(
            backgroundColor: const Color(0XFFf2f6f7),
            appBar: AppBar(
              title: const Text('Tenancy Agreement'),
              centerTitle: true,
              automaticallyImplyLeading: true,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SubHeadingText(text: 'Property'),
                    12.verticalSpace,
                    CustomSearchFiled<PropertyForInspection>(
                      isLoading: isLoading,
                      onClear: () {
                        _navigated.value = false;
                        showList.value = false;
                        updateTenantAgreement.dispose();
                        ref.invalidate(updateTenantInAgreementProvider);
                        _navigated.value = false;
                        ref.invalidate(getTenancyAgreementProvider);
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
                          showList.value = false;
                          ref
                              .read(getTenancyAgreementProvider.notifier)
                              .getTenancyAgreement(val.propertyUId ?? "");
                        }
                      },
                      displayString: (item) => item.name ?? 'No Name',
                    ),
                    16.verticalSpace,
                    AsyncWidget(
                        value: ref.watch(getTenancyAgreementProvider),
                        data: (data) {
                          if (data == null) return const SizedBox.shrink();
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HeadingText(
                                text: "Parties principle",
                              ),
                              26.verticalSpace,
                              const HeadingText(
                                text: "Primary Property Owner(s)",
                              ),
                              15.verticalSpace,
                              Row(
                                children: [
                                  Expanded(
                                    child: AppTextFiled(
                                      initialValue: data.primaryContact?.fName,
                                      isEditable: false,
                                      lable: 'First Name',
                                      hintText: 'First Name',
                                    ),
                                  ),
                                  15.horizontalSpace,
                                  Expanded(
                                    child: AppTextFiled(
                                      initialValue: data.primaryContact?.lName,
                                      isEditable: false,
                                      lable: 'Last Name',
                                      hintText: 'Last Name',
                                    ),
                                  ),
                                ],
                              ),
                              16.verticalSpace,
                              AppTextFiled(
                                initialValue: data.primaryContact?.phone,
                                isEditable: false,
                                lable: 'Mobile',
                                hintText: 'Mobile Number',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.primaryContact?.contactEmail,
                                isEditable: false,
                                lable: 'Email Address',
                                hintText: 'Email',
                              ),
                              26.verticalSpace,
                              ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  final contct = data.contactlistModel?[index];
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      HeadingText(
                                        text: "Secondary Owner ${index + 2}",
                                      ),
                                      15.verticalSpace,
                                      Row(
                                        children: [
                                          Expanded(
                                            child: AppTextFiled(
                                              initialValue: contct?.fName ?? '',
                                              isEditable: false,
                                              lable: 'First Name',
                                              hintText: 'First Name',
                                            ),
                                          ),
                                          15.horizontalSpace,
                                          Expanded(
                                            child: AppTextFiled(
                                              isEditable: false,
                                              initialValue: contct?.lName ?? '',
                                              lable: 'Last Name',
                                              hintText: 'Last Name',
                                            ),
                                          ),
                                        ],
                                      ),
                                      16.verticalSpace,
                                      AppTextFiled(
                                        isEditable: false,
                                        initialValue:
                                            contct?.mobileNumber ?? '',
                                        maxLength: 10,
                                        lable: 'Mobile',
                                        hintText: 'Mobile Number',
                                      ),
                                      10.verticalSpace,
                                      AppTextFiled(
                                        isEditable: false,
                                        initialValue:
                                            contct?.contactEmail ?? '',
                                        lable: 'Email Address',
                                        hintText: 'Email',
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return 10.verticalSpace;
                                },
                                itemCount: data.contactlistModel?.length ?? 0,
                              ),
                              26.verticalSpace,
                              ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  final tenantCtrl = updateTenantAgreement
                                      .tenantControllers[index];
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      HeadingText(
                                        text: index == 0
                                            ? "Tenant"
                                            : "Tenant ${index + 1}",
                                      ),
                                      15.verticalSpace,
                                      if (index != 0 &&
                                          tenantCtrl?.fName.text.isEmpty ==
                                              true)
                                        CustomSearchFiled<SearchContactModel>(
                                          controller:
                                              tenantCtrl?.searchController,
                                          isLoading: false,
                                          onClear: () {
                                            showContactList.value = false;
                                          },
                                          showList: showContactList.value,
                                          items:
                                              conatctSearch.valueOrNull ?? [],
                                          onSearch: (val) {
                                            showContactList.value = true;
                                            ref
                                                .read(getSearchContactProvider
                                                    .notifier)
                                                .searchConatct(val);
                                          },
                                          onSelected: (val) {
                                            if (val != null) {
                                              showContactList.value = false;
                                              updateTenantAgreement
                                                  .updateDetails(
                                                      val.uid ?? '', index);
                                            }
                                          },
                                          displayString: (item) =>
                                              item.name ?? 'No Name',
                                        ),
                                      15.verticalSpace,
                                      Row(
                                        children: [
                                          Expanded(
                                            child: AppTextFiled(
                                              controller: tenantCtrl?.fName,
                                              lable: 'First Name',
                                              hintText: 'First Name',
                                              onSaved: (val) {
                                                updateTenantAgreement
                                                    .updateTenantName(
                                                        val!, index);
                                              },
                                              validator: (val) {
                                                if (val == null ||
                                                    val.isEmpty) {
                                                  return 'Field is required';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                          15.horizontalSpace,
                                          Expanded(
                                            child: AppTextFiled(
                                              controller: tenantCtrl?.lName,
                                              lable: 'Last Name',
                                              hintText: 'Last Name',
                                              onSaved: (val) {
                                                updateTenantAgreement
                                                    .updateTenantLName(
                                                        val!, index);
                                              },
                                              validator: (val) {
                                                if (val == null ||
                                                    val.isEmpty) {
                                                  return 'Field is required';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      16.verticalSpace,
                                      AppTextFiled(
                                        maxLength: 10,
                                        controller: tenantCtrl?.phone,
                                        lable: 'Mobile',
                                        hintText: 'Mobile Number',
                                        onSaved: (val) {
                                          updateTenantAgreement
                                              .updateTenantPhone(val!, index);
                                        },
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'Field is required';
                                          }
                                          return null;
                                        },
                                      ),
                                      10.verticalSpace,
                                      AppTextFiled(
                                        controller: tenantCtrl?.email,
                                        lable: 'Email Address',
                                        hintText: 'Email',
                                        onSaved: (val) {
                                          updateTenantAgreement
                                              .updateTenantEmail(val!, index);
                                        },
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'Field is required';
                                          }
                                          return null;
                                        },
                                      ),
                                      20.verticalSpace,
                                      if (index == 0)
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                              width: 200,
                                              height: 45,
                                              child: SecondaryButton(
                                                  radius: 10,
                                                  title: "Add New Tenant",
                                                  onClick: () {
                                                    updateTenantAgreement
                                                        .addNewTenant();
                                                  })),
                                        )
                                      else
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                              width: 200,
                                              height: 45,
                                              child: SecondaryButton(
                                                  radius: 10,
                                                  title: "Remove Tenant",
                                                  onClick: () {
                                                    updateTenantAgreement
                                                        .removeTenant(index);
                                                  })),
                                        )
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return 10.verticalSpace;
                                },
                                itemCount:
                                    tenantAgreement.TenantList?.length ?? 0,
                              ),
                              30.verticalSpace,
                              const HeadingText(text: 'Agent'),
                              15.verticalSpace,
                              AppTextFiled(
                                initialValue: data.principalName,
                                isEditable: false,
                                lable: 'Name',
                                hintText: 'Name',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.tradingName,
                                isEditable: false,
                                lable: 'Business Name',
                                hintText: 'Business Name',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.agencyLicenceNumber ?? "",
                                isEditable: false,
                                lable: 'License Number',
                                hintText: 'License Number',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.agencyAddress ?? "",
                                isEditable: false,
                                lable: 'Address',
                                hintText: 'Address',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.mobile ?? "",
                                isEditable: false,
                                lable: 'Mobile',
                                hintText: 'Mobile Number',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.fax ?? "",
                                isEditable: false,
                                lable: 'Fax',
                                hintText: 'Fax',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.agencyEmail ?? '',
                                isEditable: false,
                                lable: 'Email Address',
                                hintText: 'Email Address',
                              ),
                              10.verticalSpace,
                              AppTextFiled(
                                initialValue: data.getAgentFullName ?? '',
                                isEditable: false,
                                lable: 'Agent Name',
                                hintText: 'Agent Name',
                              ),
                              60.verticalSpace,
                              PrimaryButton(
                                  title: "Next",
                                  onClick: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                      ref
                                          .read(updateTenancyAgreementProvider
                                              .notifier)
                                          .updateTenantDetails();
                                    }
                                  }),
                              60.verticalSpace,
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
