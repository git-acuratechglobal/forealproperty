import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/management_agreement/manage_agreement3.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:intl/intl.dart';

import '../providers/get_management_agreement.dart';
import '../sales_agency_agreement/widgets/heading_text.dart';
import '../sales_agency_agreement/widgets/sub_heading_text.dart';

class ManangeAgreement extends ConsumerStatefulWidget {
 const ManangeAgreement({super.key, });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManangeAgreementState();
}

class _ManangeAgreementState extends ConsumerState<ManangeAgreement> {
  final _formKey = GlobalKey<FormState>();

  String? selectedDate;



  @override
  Widget build(BuildContext context) {
    final updateParam =
        ref.read(managementAgreementPeriodDetailsParamProvider.notifier);
    return PageLoadingWidget(
      isLoading: ref.watch(updateManagementAgreementProvider).isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Manage Agreement'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0XFFf2f6f7),
        body: AsyncWidget(
          value: ref.watch(getManagementAgreementProvider),
          data: (data) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(text: 'Agreement Period'.toUpperCase()),
                    12.verticalSpace,
                    const SubHeadingText(text: 'Commencing On'),
                    10.verticalSpace,
                    DatePickerDropdown(
                        isSelectAnyDate: true,
                        validator: (value) =>
                            value == null || value.trim().isEmpty
                                ? 'This field is required'
                                : null,
                        selectedDate: selectedDate ?? data?.formatAgreementDate,
                        onDateSelected: (date) {
                          setState(() {
                            selectedDate = date;
                            print("Selected Date: $date");
                          });
                        },
                        hintText: 'mm-dd-yyyy',
                        onSaved: (val) {
                          if (val != null && val.isNotEmpty) {
                            final parsedDate =
                                DateFormat('dd-MM-yyyy').parse(val);

                            updateParam.updateParam(
                              (e) => e.copyWith(AgreementDate: parsedDate),
                            );
                          }
                        }),
                    16.verticalSpace,
                    Divider(
                      color: Colors.grey.withValues(alpha: 0.5),
                    ),
                    16.verticalSpace,
                    HeadingText(
                        text: 'Agent’s Authority for leasing'.toUpperCase()),
                    20.verticalSpace,
                    const SubHeadingText(
                        text:
                            'At the end of each tenany, the Agent is authorized to:'),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                            child: SubHeadingText(
                                text:
                                    'Lease an Re-lease the Premises at market rent:')),
                        CustomCupertinoToggle(
                          initialValue:
                              data?.leasePremisesAtMarketRent ?? false,
                          trueLabel: 'Y',
                          falseLabel: 'N',
                          onChanged: (value) {
                            updateParam.updateParam((e) =>
                                e.copyWith(LeasePremisesAtMarketRent: value));
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                            child: SubHeadingText(
                          text:
                              "Review the rent when appropriate before re-leasing:",
                        )),
                        CustomCupertinoToggle(
                          initialValue: data?.reviewRentBfrRLease ?? false,
                          trueLabel: 'Y',
                          falseLabel: 'N',
                          onChanged: (value) {
                            updateParam.updateParam(
                                (e) => e.copyWith(ReviewRentBfrRLease: value));
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                            child: SubHeadingText(
                          text:
                              "Refer to the Principal for instructions concerning re-leasing and advertising/promotion::",
                        )),
                        12.horizontalSpace,
                        CustomCupertinoToggle(
                          initialValue:
                              data?.referToPrincipalForReLease ?? false,
                          trueLabel: 'Y',
                          falseLabel: 'N',
                          onChanged: (value) {
                            updateParam.updateParam((e) =>
                                e.copyWith(ReferToPrincipalForReLease: value));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 5,
                    ),
                    PrimaryButton(
                        title: 'Next',
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            ref
                                .read(
                                    updateManagementAgreementProvider.notifier)
                                .updateAgreementPeriodDetails(
                                );
                          }
                        }),
                    24.verticalSpace
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
