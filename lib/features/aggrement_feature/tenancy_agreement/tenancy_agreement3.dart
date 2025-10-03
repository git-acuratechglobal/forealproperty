import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/tenancy_agreement/tenancy_agreement4.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../common/common_widgets.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../providers/params_providers.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class TenancyAgreement3 extends HookConsumerWidget {
  const TenancyAgreement3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final startDate = useState<String?>(null);
    final period = useState<String?>(null);
    final selectedBond = useState<String?>(null);
    final updateParam = ref.read(updateRentBondParamProvider.notifier);
    final bondList = [
      "the landlord or another person, or",
      "the landlord's agent, or",
      "NSW Fair Trading through Rental Bond Online"
    ];
    return PageLoadingWidget(
      isLoading: ref.watch(updateTenancyAgreementProvider).isLoading,
      child: Scaffold(
        backgroundColor: const Color(0XFFf2f6f7),
        appBar: AppBar(
          title: const Text('Tenancy Agreement'),
          centerTitle: true,
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
                        const HeadingText(text: 'Rent'),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.rentAmount.toString(),
                          lable: 'The rent is',
                          hintText: 'Rent',
                          onSaved: (val) {
                            if (val == null) return;
                            updateParam.updateParam(
                                (e) => e.copyWith(RentAmount: int.parse(val)));
                          },
                        ),
                        10.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SubHeadingText(
                              text: "Period",
                            ),
                            8.verticalSpace,
                            WidgetDropdown(
                              propertyOptions: const ['Weekly', 'Monthly'],
                              selectedValue: period.value ??
                                  (data?.period == 1 ? 'Weekly' : 'Monthly'),
                              onChanged: (String? value) {
                                if (value != null) {
                                  period.value = value;
                                  updateParam.updateParam((e) => e.copyWith(
                                      Period: value == 'Weekly' ? 1 : 2));
                                }
                              },
                              hintText: 'Period',
                              suffixIcon: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                            text: 'Payable in advance starting on'),
                        8.verticalSpace,
                        DatePickerDropdown(
                          isSelectAnyDate: true,
                          isfromAgreement: true,
                          validator: (value) =>
                              value == null || value.trim().isEmpty
                                  ? 'This field is required'
                                  : null,
                          selectedDate: startDate.value ?? data?.fromatedLease,
                          onDateSelected: (date) {
                            startDate.value = date;
                          },
                          hintText: 'mm-dd-yyyy',
                          onSaved: (val) {
                            if (val == null) return;
                            updateParam.updateParam((e) => e.copyWith(
                                LeaseCommencement: DateFormat('yyyy-MM-dd')
                                    .format(
                                        DateFormat('dd-MM-yyyy').parse(val))));
                          },
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                          text: "The method by which the rent must be paid:",
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                          text:
                              "(a) Electronic Funds Transfer (EFT) into the following account, or any other account nominated by the landlord:",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.accountName ?? "",
                            lable: 'A/C Name',
                            hintText: 'A/C Name',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(AccountName: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.bsb ?? "",
                            lable: 'BSB',
                            hintText: 'BSB',
                            onSaved: (val) {
                              updateParam
                                  .updateParam((e) => e.copyWith(BSB: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.accountNo ?? "",
                            lable: 'A/C Number',
                            hintText: 'A/C Number',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(AccountNo: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.paymentReference ?? "",
                            lable: 'Payment Reference',
                            hintText: 'Payment Reference',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(PaymentReference: val));
                            }),
                        10.verticalSpace,
                        const SubHeadingText(
                          text: "(b)",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.paymentTo ?? "",
                            lable: 'to',
                            hintText: 'to',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(PaymentTo: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.paymentAt ?? "",
                            lable: 'at',
                            hintText: 'at',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(PaymentAt: val));
                            }),
                        10.verticalSpace,
                        const SubHeadingText(
                          text: "(c)",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.paymentFollows ?? "",
                            lable: 'as follows',
                            hintText: 'as follows',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (e) => e.copyWith(PaymentFollows: val));
                            }),
                        20.verticalSpace,
                        const HeadingText(
                          text: "Rental Bond",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.bondAmount.toString() ?? '',
                          lable: 'A rental bond of',
                          hintText: 'A rental bond of',
                          onSaved: (val) {
                            if (val == null) return;
                            updateParam.updateParam(
                                (e) => e.copyWith(BondAmount: int.parse(val)));
                          },
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                          text: 'The tenant provided the rental bond amount to',
                        ),
                        10.verticalSpace,
                        Wrap(
                          direction: Axis.vertical,
                          // spacing: 20,
                          runSpacing: 8,
                          children: bondList.map((duration) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: RadioListTile<String>(
                                fillColor:
                                    WidgetStateProperty.all(Colors.black),
                                contentPadding: EdgeInsets.zero,
                                title: SubHeadingText(
                                  text: duration,
                                ),
                                value: duration,
                                groupValue: selectedBond.value ??
                                    data?.bondAmountProvidedTo,
                                onChanged: (value) {
                                  selectedBond.value = value;
                                  updateParam.updateParam((e) =>
                                      e.copyWith(BondAmountProvidedTo: value));
                                },
                              ),
                            );
                          }).toList(),
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
                                    .updateRentBondDetails();
                              }
                            }),
                        60.verticalSpace,
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}
