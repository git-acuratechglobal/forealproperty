import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/legal_provider.dart';

class Legal extends ConsumerStatefulWidget {
  const Legal({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LegalState();
}

class _LegalState extends ConsumerState<Legal> {
  late TextEditingController sellerFirmTypeController;
  late TextEditingController sellerFirmController;
  late TextEditingController sellerPrincipalNameController;
  late TextEditingController sellerEmailController;
  late TextEditingController sellerPhoneController;
  late TextEditingController sellerFaxController;
  late TextEditingController sellerAddressController;
  late TextEditingController buyerFirmTypeController;
  late TextEditingController buyerFirmController;
  late TextEditingController buyerPrincipalNameController;
  late TextEditingController buyerEmailController;
  late TextEditingController buyerPhoneController;
  late TextEditingController buyerFaxController;
  late TextEditingController buyerAddressController;

  @override
  void initState() {
    super.initState();
    final legalData = ref.read(legalProvider);

    sellerFirmTypeController =
        TextEditingController(text: legalData.sellerFirmType ?? '');
    sellerFirmController =
        TextEditingController(text: legalData.sellerFirm ?? '');
    sellerPrincipalNameController =
        TextEditingController(text: legalData.sellerPrincipalName ?? '');
    sellerEmailController =
        TextEditingController(text: legalData.sellerEmail ?? '');
    sellerPhoneController =
        TextEditingController(text: legalData.sellerPhone ?? '');
    sellerFaxController =
        TextEditingController(text: legalData.sellerFax ?? '');
    sellerAddressController =
        TextEditingController(text: legalData.sellerAddress ?? '');

    buyerFirmTypeController =
        TextEditingController(text: legalData.buyerFirmType ?? '');
    buyerFirmController =
        TextEditingController(text: legalData.buyerFirm ?? '');
    buyerPrincipalNameController =
        TextEditingController(text: legalData.buyerPrincipalName ?? '');
    buyerEmailController =
        TextEditingController(text: legalData.buyerEmail ?? '');
    buyerPhoneController =
        TextEditingController(text: legalData.buyerPhone ?? '');
    buyerFaxController = TextEditingController(text: legalData.buyerFax ?? '');
    buyerAddressController =
        TextEditingController(text: legalData.buyerAddress ?? '');
  }

  @override
  void dispose() {
    sellerFirmTypeController.dispose();
    sellerFirmController.dispose();
    sellerPrincipalNameController.dispose();
    sellerEmailController.dispose();
    sellerPhoneController.dispose();
    sellerFaxController.dispose();
    sellerAddressController.dispose();
    buyerFirmTypeController.dispose();
    buyerFirmController.dispose();
    buyerPrincipalNameController.dispose();
    buyerEmailController.dispose();
    buyerPhoneController.dispose();
    buyerFaxController.dispose();
    buyerAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final legalNotifier = ref.read(legalProvider.notifier);
    final legalData = ref.watch(legalProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  Text(
                    'SELLER SOLICITOR/CONVEYANCER DETAILS',
                    style: TextStyle(
                      color: const Color(0xFF164C63),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  16.verticalSpace,

                  Text('Seller Firm Type',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  WidgetDropdown(
                    propertyOptions: const ['Agent', 'Owner'],
                    selectedValue: legalData.sellerFirmType,
                    onChanged: (String? value) {
                      sellerFirmTypeController.text = value ?? '';
                      legalNotifier.updateField('sellerFirmType', value);
                    },
                    hintText: 'Select for Seller Firm',
                  ),
                  16.verticalSpace,

                  Text('Name of the Seller Firm',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Name of the Firm',
                    controller: sellerFirmController,
                    onChanged: (value) {
                      legalNotifier.updateField('sellerFirm', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Principal’s Name',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Principal’s Name',
                    controller: sellerPrincipalNameController,
                    onChanged: (value) {
                      legalNotifier.updateField('sellerPrincipalName', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Email Address',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Email Address',
                    controller: sellerEmailController,
                    onChanged: (value) {
                      legalNotifier.updateField('sellerEmail', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Phone', style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Phone Number',
                    controller: sellerPhoneController,
                    onChanged: (value) {
                      legalNotifier.updateField('sellerPhone', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Fax', style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Fax',
                    controller: sellerFaxController,
                    onChanged: (value) {
                      legalNotifier.updateField('sellerFax', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Seller Address',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Search for address',
                    controller: sellerAddressController,
                    onChanged: (value) {
                      legalNotifier.updateField('sellerAddress', value);
                    },
                  ),
                  32.verticalSpace,
                  const Divider(height: 1, color: Color(0xFFE2E2E2)),
                  32.verticalSpace,

                  /// BUYER DETAILS
                  Text(
                    'BUYER SOLICITOR/CONVEYANCER DETAILS',
                    style: TextStyle(
                      color: const Color(0xFF164C63),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  16.verticalSpace,

                  Text('Buyer Firm Type',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  WidgetDropdown(
                    propertyOptions: const ['Agent', 'Owner'],
                    selectedValue: legalData.buyerFirmType,
                    onChanged: (String? value) {
                      buyerFirmTypeController.text = value ?? '';
                      legalNotifier.updateField('buyerFirmType', value);
                    },
                    hintText: 'Select for Buyer Firm',
                  ),
                  16.verticalSpace,

                  Text('Name of the Buyer Firm',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Name of the Buyer Firm',
                    controller: buyerFirmController,
                    onChanged: (value) {
                      legalNotifier.updateField('buyerFirm', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Principal’s Name',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Principal’s Name',
                    controller: buyerPrincipalNameController,
                    onChanged: (value) {
                      legalNotifier.updateField('buyerPrincipalName', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Email Address',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Email Address',
                    controller: buyerEmailController,
                    onChanged: (value) {
                      legalNotifier.updateField('buyerEmail', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Phone', style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Phone Number',
                    controller: buyerPhoneController,
                    onChanged: (value) {
                      legalNotifier.updateField('buyerPhone', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Fax', style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Fax',
                    controller: buyerFaxController,
                    onChanged: (value) {
                      legalNotifier.updateField('buyerFax', value);
                    },
                  ),
                  16.verticalSpace,

                  Text('Buyer Address',
                      style: Theme.of(context).textTheme.bodyLarge),
                  16.verticalSpace,
                  CommonTextField(
                    label: 'Search for address',
                    controller: buyerAddressController,
                    onChanged: (value) {
                      legalNotifier.updateField('buyerAddress', value);
                    },
                  ),
                  32.verticalSpace,
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, -3),
                  ),
                ],
              ),
              child: BottomAppBar(
                color: Colors.white,
                child: PrimaryButton(
                  isLoading: ref.watch(propertyNotifierProvider).isLoading,
                  title: 'Next',
                  onClick: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.only(top: 10),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.1),
      //         blurRadius: 10,
      //         spreadRadius: 2,
      //         offset: Offset(0, -3),
      //       ),
      //     ],
      //   ),
      //   child: BottomAppBar(
      //     color: Colors.white,
      //     child: PrimaryButton(
      //       isLoading: ref.watch(propertyNotifierProvider).isLoading,
      //       title: 'Next',
      //       onClick: () {},
      //     ),
      //   ),
      // ),
    );
  }
}
