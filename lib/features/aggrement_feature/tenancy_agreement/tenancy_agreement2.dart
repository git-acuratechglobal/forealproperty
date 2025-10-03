import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/tenancy_agreement/tenancy_agreement3.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/appbutton.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class TenancyAgreement2 extends HookConsumerWidget {
  const TenancyAgreement2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final selectedDuration = useState<String?>(null);
    final startDate = useState<String?>(null);
    final endDate = useState<String?>(null);
    final durationList = useState([
      "6 months",
      "12 months",
      "2 years",
      "3 years",
      "5 years",
      "Periodic (no end date)",
      "Other (Please specify)",
    ]);
    final updateParam =
        ref.read(updateLandlordTenantDetailsParamProvider.notifier);
    final agreemenent = ref.watch(updateLandlordTenantDetailsParamProvider);
    return PageLoadingWidget(
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
            child: AsyncWidget(
                value: ref.watch(getTenancyAgreementProvider),
                data: (data) {
                  return Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(
                          text: "Landlord's agent details [if applicable]",
                        ),
                        15.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordAgentName ?? '',
                          lable: 'Agent Name',
                          hintText: 'Agent Name',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(LandlordAgentName: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordBusinessAddress ?? '',
                          lable: 'Business Address',
                          hintText: 'Business Address',
                          onSaved: (val) {
                            updateParam.updateParam((e) =>
                                e.copyWith(LandlordBusinessAddress: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordAgentSuburb ?? '',
                          lable: 'Suburb',
                          hintText: 'Suburb',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(LandlordAgentSuburb: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordAgentState ?? '',
                          lable: 'State',
                          hintText: 'State',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(LandlordAgentState: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordAgentPostcode ?? '',
                          lable: 'Postcode',
                          hintText: 'Postcode',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(LandlordAgentPostcode: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordAgentContact ?? '',
                          lable: 'Contact Details',
                          hintText: 'Contact Details',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(LandlordAgentContact: val));
                          },
                        ),
                        26.verticalSpace,
                        const HeadingText(
                          text: "Tenant's agent details [if applicable]",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantAgentName ?? '',
                          lable: 'Agent Name',
                          hintText: 'Agent Name',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(TenantAgentName: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantBusinessAddress ?? '',
                          lable: 'Business Address',
                          hintText: 'Business Address',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(TenantBusinessAddress: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantAgentSuburb ?? '',
                          lable: 'Suburb',
                          hintText: 'Suburb',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(TenantAgentSuburb: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantAgentState ?? '',
                          lable: 'State',
                          hintText: 'State',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(TenantAgentState: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantAgentPostcode ?? '',
                          lable: 'Postcode',
                          hintText: 'Postcode',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(TenantAgentPostcode: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantAgentContact ?? '',
                          lable: 'Contact Details',
                          hintText: 'Contact Details',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(TenantAgentContact: val));
                          },
                        ),
                        30.verticalSpace,
                        const HeadingText(
                          text: "Property ('the property')",
                        ),
                        Text(
                          ' Description of the Property sufficiently detailed to allow it to be readily identified.',
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        15.verticalSpace,
                        //  AppTextFiled(
                        //    initialValue: data?.propertyType??'',
                        //   lable: 'Property Type',
                        //   hintText: 'Property Type',
                        // ),
                        // 16.verticalSpace,
                        // const AppTextFiled(
                        //   lable: 'Property Address',
                        //   hintText: 'Property Address',
                        // ),
                        // 16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.propertyAddress ?? '',
                          lable: 'Address',
                          hintText: 'Address',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(PropertyAddress: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.propertySuburb ?? '',
                          lable: 'Suburb',
                          hintText: 'Suburb',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(PropertySuburb: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.propertyState ?? '',
                          lable: 'State',
                          hintText: 'State',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(PropertyState: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.propertyPostCode ?? '',
                          lable: 'Postcode',
                          hintText: 'Postcode',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (e) => e.copyWith(PropertyPostCode: val));
                          },
                        ),
                        20.verticalSpace,
                        const Row(
                          children: [
                            Expanded(
                              child: AppTextFiled(
                                lable: 'The residential premises include',
                                hintText: 'The residential premises include',
                              ),
                            ),
                          ],
                        ),
                        30.verticalSpace,
                        const HeadingText(
                          text: "Term of agreement",
                        ),
                        15.verticalSpace,
                        const SubHeadingText(
                          text: 'The residential premises include',
                        ),
                        20.verticalSpace,
                        Wrap(
                          spacing: 20,
                          runSpacing: 8,
                          children: durationList.value.map((duration) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: RadioListTile<String>(
                                fillColor:
                                    WidgetStateProperty.all(Colors.black),
                                contentPadding: EdgeInsets.zero,
                                title: SubHeadingText(text: duration),
                                value: duration,
                                groupValue: selectedDuration.value ??
                                    _mapCodeToDuration(data?.termsAgreement),
                                onChanged: (value) {
                                  selectedDuration.value = value;
                                  if (value == "Other (Please specify)") {
                                    endDate.value = null;
                                    startDate.value = null;
                                  }
                                  final agreement = _mapDurationToCode(value!);
                                  updateParam.updateParam((e) =>
                                      e.copyWith(TermsAgreement: agreement));
                                },
                              ),
                            );
                          }).toList(),
                        ),
                        if (agreemenent.TermsAgreement == 6) ...[
                          20.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.termsAgreementNote ?? '',
                            lable: 'Note',
                            hintText: 'Note',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(TermsAgreementNote: val));
                            },
                          ),
                        ],
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SubHeadingText(
                                  text: "Starting On",
                                ),
                                8.verticalSpace,
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: DatePickerDropdown(
                                    isfromAgreement: true,
                                    isSelectAnyDate: true,
                                    validator: (value) =>
                                        value == null || value.trim().isEmpty
                                            ? 'This field is required'
                                            : null,
                                    selectedDate: startDate.value ??
                                        agreemenent.AgreementStart,
                                    onDateSelected: (date) {
                                      if (selectedDuration.value != null) {
                                        startDate.value = date;
                                        endDate.value = _calculateEndDate(
                                            date!, selectedDuration.value!);
                                        updateParam.updateParam((e) =>
                                            e.copyWith(
                                                AgreementStart: DateFormat(
                                                        'yyyy-MM-dd')
                                                    .format(
                                                        DateFormat('dd-MM-yyyy')
                                                            .parse(date))));
                                        updateParam.updateParam((e) =>
                                            e.copyWith(
                                                AgreementEnd: endDate.value !=
                                                        null
                                                    ? DateFormat('yyyy-MM-dd')
                                                        .format(DateFormat(
                                                                'dd-MM-yyyy')
                                                            .parse(
                                                                endDate.value!))
                                                    : null));
                                      }
                                    },
                                    hintText: 'mm-dd-yyyy',
                                    onSaved: (val) {
                                      if (selectedDuration.value ==
                                          "Other (Please specify)") return;
                                      updateParam.updateParam((e) => e.copyWith(
                                          AgreementStart: val != null
                                              ? DateFormat('yyyy-MM-dd').format(
                                                  DateFormat('dd-MM-yyyy')
                                                      .parse(val))
                                              : null));
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SubHeadingText(
                                  text: "Ending On",
                                ),
                                8.verticalSpace,
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: DatePickerDropdown(
                                    isfromAgreement: true,
                                    isSelectAnyDate: true,
                                    validator: (value) =>
                                        value == null || value.trim().isEmpty
                                            ? 'This field is required'
                                            : null,
                                    selectedDate: endDate.value ??
                                        agreemenent.AgreementEnd,
                                    onDateSelected: (date) {
                                      endDate.value = date;
                                    },
                                    hintText: 'mm-dd-yyyy',
                                    onSaved: (val) {
                                      if (selectedDuration.value ==
                                              "Other (Please specify)" ||
                                          selectedDuration.value ==
                                              'Periodic (no end date)') return;
                                      updateParam.updateParam((e) => e.copyWith(
                                          AgreementEnd: val != null
                                              ? DateFormat('yyyy-MM-dd').format(
                                                  DateFormat('dd-MM-yyyy')
                                                      .parse(val))
                                              : null));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        60.verticalSpace,
                        PrimaryButton(
                            title: "Next",
                            onClick: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ref
                                    .read(
                                        updateTenancyAgreementProvider.notifier)
                                    .updateLandlordDetails();
                              }
                            }),
                        60.verticalSpace,
                      ],
                    ),
                  );
                }),
          )),
    );
  }

  int _mapDurationToCode(String duration) {
    switch (duration) {
      case "6 months":
        return 1;
      case "12 months":
        return 2;
      case "2 years":
        return 3;
      case "3 years":
        return 4;
      case "5 years":
        return 5;
      case "Other (Please specify)":
        return 6;
      case "Periodic (no end date)":
        return 7;
      default:
        return 0;
    }
  }

  String? _mapCodeToDuration(int? code) {
    switch (code) {
      case 1:
        return "6 months";
      case 2:
        return "12 months";
      case 3:
        return "2 years";
      case 4:
        return "3 years";
      case 5:
        return "5 years";
      case 6:
        return "Other (Please specify)";
      case 7:
        return "Periodic (no end date)";
    }
    return null;
  }
}

String? _calculateEndDate(String startDateStr, String duration) {
  try {
    final startDate = DateFormat('dd-MM-yyyy').parse(startDateStr);
    DateTime? end;

    switch (duration) {
      case "6 months":
        end = DateTime(startDate.year, startDate.month + 6, startDate.day);
        break;
      case "12 months":
        end = DateTime(startDate.year, startDate.month + 12, startDate.day);
        break;
      case "2 years":
        end = DateTime(startDate.year + 2, startDate.month, startDate.day);
        break;
      case "3 years":
        end = DateTime(startDate.year + 3, startDate.month, startDate.day);
        break;
      case "5 years":
        end = DateTime(startDate.year + 5, startDate.month, startDate.day);
        break;
      case "Periodic (no end date)":
        return null; // no end date
      case "Other (Please specify)":
        return null; // leave empty, user can pick manually
    }

    return end != null ? DateFormat('dd-MM-yyyy').format(end) : null;
  } catch (e) {
    return null;
  }
}
