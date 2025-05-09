import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_property_listing.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/property_listing.dart';

class PropertyListing extends ConsumerStatefulWidget {
  const PropertyListing({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PropertyListingState();
}

class _PropertyListingState extends ConsumerState<PropertyListing> {
  List<String> option = ['Sell', 'Rent'];
  String currentOption = 'Sell';
  int? selectedValue;

  // Controllers for the text input fields
  late TextEditingController propertyPriceController;
  late TextEditingController showTextController;
  late TextEditingController rentalPriceController;
  late TextEditingController showTextController2;
  late TextEditingController rentalPriceController2;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final propertyId =
          ref.watch(localStorageServiceProvider).getPropertyModel()?.id;

      if (propertyId != null) {
        ref.read(listingParamsDataProvider.notifier).update(
              (p) => p.copyWith(propertyId: propertyId),
            );
      }
    });
    final propertyListing = ref.read(propertyListingProvider);

    propertyPriceController = TextEditingController(
        text: propertyListing.propertyPrice == null
            ? null
            : propertyListing.propertyPrice.toString());
    showTextController =
        TextEditingController(text: propertyListing.showText.toString());
    rentalPriceController =
        TextEditingController(text: propertyListing.rentalPrice.toString());
    showTextController2 =
        TextEditingController(text: propertyListing.showText2.toString());
    rentalPriceController2 =
        TextEditingController(text: propertyListing.rentalPrice2.toString());
  }

  @override
  void dispose() {
    // Dispose the controllers to free up resources
    propertyPriceController.dispose();
    showTextController.dispose();
    rentalPriceController.dispose();
    showTextController2.dispose();
    rentalPriceController2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final propertyListing = ref.watch(propertyListingProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Radio Button Row
            Row(
              children: List.generate(option.length, (index) {
                return Row(
                  children: [
                    Radio<String>(
                      activeColor: Colors.black,
                      value: option[index],
                      groupValue: currentOption,
                      onChanged: (value) {
                        setState(() {
                          currentOption = value!;
                          ref
                              .read(propertyListingProvider.notifier)
                              .updateField('currentOption', value);
                        });
                      },
                    ),
                    Text(
                      option[index],
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: const Color(0xFF494D60)),
                    ),
                    if (index < option.length - 1) SizedBox(width: 20.w),
                  ],
                );
              }),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                12.verticalSpace,
                Text(
                  'Listing Status',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                WidgetDropdown(
                  propertyOptions: ['Agent', 'Owner'],
                  selectedValue: ref
                              .watch(propertyListingProvider)
                              .agreementType ==
                          null
                      ? null
                      : ref.watch(propertyListingProvider).listingStatus == 1
                          ? 'Agent'
                          : 'Owner',
                  onChanged: (String? value) {
                    int intValue = value == 'Agent' ? 1 : 2;
                    print(intValue);
                    ref
                        .read(propertyListingProvider.notifier)
                        .updateField('listingStatus', intValue);

                    ref
                        .read(listingParamsDataProvider.notifier)
                        .update((p) => p.copyWith(listingStatus: intValue));
                  },
                  hintText: 'Listing Status',
                ),
                16.verticalSpace,
                Text(
                  'Agreement Type',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                WidgetDropdown(
                  propertyOptions: ['Agent', 'Owner'],
                  selectedValue: ref
                              .watch(propertyListingProvider)
                              .agreementType ==
                          null
                      ? null
                      : ref.watch(propertyListingProvider).agreementType == 1
                          ? 'Agent'
                          : 'Owner',
                  onChanged: (String? value) {
                    int intValue = value == 'Agent' ? 1 : 2;
                    print(intValue);
                    ref
                        .read(propertyListingProvider.notifier)
                        .updateField('agreementType', intValue);

                    ref.read(listingParamsDataProvider.notifier).update(
                        (p) => p.copyWith(propertyAgreementType: intValue));
                  },
                  hintText: 'Aggrement Type',
                ),
                16.verticalSpace,
                Text(
                  'Property Price',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                CommonTextField(
                  controller: propertyPriceController,
                  label: 'Property Price',
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      ref
                          .read(propertyListingProvider.notifier)
                          .updateField('propertyPrice', value);

                      ref.read(listingParamsDataProvider.notifier).update(
                          (p) => p.copyWith(propertyPrice: int.parse(value)));
                    }
                  },
                ),
                16.verticalSpace,
                Text(
                  ' Is Commercial',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                WidgetDropdown(
                  propertyOptions: ['true', 'false'],
                  selectedValue: ref.watch(propertyListingProvider).dualAgent ==
                          null
                      ? null
                      : ref.watch(propertyListingProvider).isCommercial == true
                          ? 'true'
                          : 'false',
                  onChanged: (String? value) {
                    bool boolValue =
                        value == 'true'; // 'true' => true, 'false' => false
                    print(boolValue); // Debug print
                    ref
                        .read(propertyListingProvider.notifier)
                        .updateField('isCommercial', boolValue);

                    ref
                        .read(listingParamsDataProvider.notifier)
                        .update((p) => p.copyWith(isCommercial: boolValue));
                  },
                  hintText: 'Commercial',
                ),
                16.verticalSpace,
                // Text(
                //   'New or Established',
                //   style: Theme.of(context).textTheme.bodyLarge,
                // ),
                // 12.verticalSpace,
                // WidgetDropdown(
                //   propertyOptions: ['Agent', 'Owner'],
                //   selectedValue:
                //       ref.watch(propertyListingProvider).newOrEstablished == 1
                //           ? 'Agent'
                //           : 'Owner',
                //   onChanged: (String? value) {
                //     int intValue = value == 'Agent' ? 1 : 2;
                //     print(intValue);
                //     ref
                //         .read(propertyListingProvider.notifier)
                //         .updateField('newOrEstablished', intValue);
                //   },
                //   hintText: 'New or Established',
                // ),
                //16.verticalSpace,
                // Text(
                //   'Listing Agent',
                //   style: Theme.of(context).textTheme.bodyLarge,
                // ),
                // 12.verticalSpace,
                // WidgetDropdown(
                //   propertyOptions: ['Agent', 'Owner'],
                //   selectedValue:
                //       ref.watch(propertyListingProvider).listingAgent == 1
                //           ? 'Agent'
                //           : 'Owner',
                //   onChanged: (String? value) {
                //     int intValue = value == 'Agent' ? 1 : 2;
                //     print(intValue);
                //     ref
                //         .read(propertyListingProvider.notifier)
                //         .updateField('listingAgent', intValue);
                //   },
                //   hintText: 'Listing Agent',
                // ),
                16.verticalSpace,
                Text(
                  'Dual Agent',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                WidgetDropdown(
                  propertyOptions: ['true', 'false'],
                  selectedValue:
                      ref.watch(propertyListingProvider).dualAgent == null
                          ? null
                          : ref.watch(propertyListingProvider).dualAgent == true
                              ? 'true'
                              : 'false',
                  onChanged: (String? value) {
                    bool boolValue =
                        value == 'true'; // 'true' => true, 'false' => false
                    print(boolValue); // Debug print
                    ref
                        .read(propertyListingProvider.notifier)
                        .updateField('dualAgent', boolValue);
                    ref
                        .read(listingParamsDataProvider.notifier)
                        .update((p) => p.copyWith(isDualAgent: boolValue));
                  },
                  hintText: 'Dual Agent',
                ),
                16.verticalSpace,
                Text(
                  'Show Price',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                WidgetDropdown(
                  propertyOptions: ['true', 'false'],
                  selectedValue:
                      ref.watch(propertyListingProvider).showPrice == null
                          ? null
                          : ref.watch(propertyListingProvider).showPrice == true
                              ? 'true'
                              : 'false',
                  onChanged: (String? value) {
                    bool boolValue =
                        value == 'true'; // 'true' => true, 'false' => false
                    print(boolValue); // Debug print
                    ref
                        .read(propertyListingProvider.notifier)
                        .updateField('showPrice', boolValue);
                    ref
                        .read(listingParamsDataProvider.notifier)
                        .update((p) => p.copyWith(isShowPrice: boolValue));
                  },
                  hintText: 'Show Price',
                ),
                16.verticalSpace,
                // Text(
                //   'Show Text',
                //   style: Theme.of(context).textTheme.bodyLarge,
                // ),
                // 12.verticalSpace,
                // CommonTextField(
                //   controller: showTextController,
                //   label: 'Show Text',
                //   onChanged: (value) {
                //     ref
                //         .read(propertyListingProvider.notifier)
                //         .updateField('showText', value);
                //   },
                // ),
                32.verticalSpace,
              ],
            )
          ],
          //   if (currentOption == 'Rent') ...[
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         12.verticalSpace,
          //         Text(
          //           'Listing Status',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).listingStatus2 == 1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('listingStatus2', intValue);
          //           },
          //           hintText: 'Listing Status',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Agreement Type',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).agreementType2 == 1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('agreementType2', intValue);
          //           },
          //           hintText: 'Agreement Type',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Rental Price',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         CommonTextField(
          //           controller: rentalPriceController2,
          //           label: 'Rental Price',
          //           onChanged: (value) {
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('rentalPrice2', value);
          //           },
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Commercial',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).isCommercial2 == 1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('isCommercial2', intValue);
          //           },
          //           hintText: 'Commercial',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'New or Established',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).newOrEstablished2 ==
          //                       1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('newOrEstablished2', intValue);
          //           },
          //           hintText: 'New or Established',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Listing Agent',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).listingAgent2 == 1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('listingAgent2', intValue);
          //           },
          //           hintText: 'Listing Agent ',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Dual Agent',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).dualAgent2 == 1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('dualAgent2', intValue);
          //           },
          //           hintText: 'Dual Agent',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Show Price',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         WidgetDropdown(
          //           propertyOptions: ['Agent', 'Owner'],
          //           selectedValue:
          //               ref.watch(propertyListingProvider).showPrice2 == 1
          //                   ? 'Agent'
          //                   : 'Owner',
          //           onChanged: (String? value) {
          //             int intValue = value == 'Agent' ? 1 : 2;
          //             print(intValue);
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('showPrice2', intValue);
          //           },
          //           hintText: 'Show Price',
          //         ),
          //         16.verticalSpace,
          //         Text(
          //           'Show Text',
          //           style: Theme.of(context).textTheme.bodyLarge,
          //         ),
          //         12.verticalSpace,
          //         CommonTextField(
          //           controller: showTextController2,
          //           label: 'Show Text',
          //           onChanged: (value) {
          //             ref
          //                 .read(propertyListingProvider.notifier)
          //                 .updateField('showText2', value);
          //           },
          //         ),
          //         32.verticalSpace,
          //       ],
          //     )
          //   ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: PrimaryButton(
            isLoading: ref.watch(propertyNotifierProvider).isLoading,
            title: 'Next',
            onClick: () {
              print('hii');
              ref.read(propertyNotifierProvider.notifier).addPropertyListing();
            },
          ),
        ),
      ),
    );
  }
}
