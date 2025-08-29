import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_property_listing.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/property_listing.dart';

class PropertyListing extends ConsumerStatefulWidget {
  final PropertyDetailModel? propertyData;
  const PropertyListing({super.key, this.propertyData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PropertyListingState();
}

class _PropertyListingState extends ConsumerState<PropertyListing> {
  List<String> option = ['Sell', 'Rent'];
  String currentOption = 'Sell';
  int? selectedValue;
  int getMappedValue(String label) {
    switch (label.trim().toLowerCase()) {
      case 'sell':
        return 1;
      case 'rent':
        return 2;
      default:
        return 1;
    }
  }

  // Controllers for the text input fields
  final TextEditingController headingController = TextEditingController();
  final TextEditingController propertyPriceController = TextEditingController();
  final TextEditingController showTextController = TextEditingController();
  final TextEditingController rentalPriceController = TextEditingController();
  final TextEditingController showTextController2 = TextEditingController();
  final TextEditingController rentalPriceController2 = TextEditingController();

  String? selectedDate;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //  final propertyData = ref.read(listingParamsDataProvider);
      ref.read(listingParamsDataProvider.notifier).update(
            (p) => p.copyWith(propertyId: widget.propertyData!.propertyId),
          );

      final userId = ref.read(localStorageServiceProvider).getuser()?.userId;
      if (userId != null) {
        ref.read(listingParamsDataProvider.notifier).update(
              (p) => p.copyWith(userId: userId),
            );
      }

      widget.propertyData != null
          ? ref
              .read(listingParamsDataProvider.notifier)
              .updateListingParams(widget.propertyData)
          : null;

      final propertyData = ref.read(listingParamsDataProvider);
      propertyPriceController.text =
          propertyData.propertyPrice?.toString() ?? '';
      rentalPriceController.text = propertyData.rentPrice != null
          ? propertyData.rentPrice.toString()
          : '';

      // showTextController.text = propertyData.showText ?? '';
    });
  }

  final Map<int, String> statusMap = {
    1: 'Active',
    2: 'Deleted',
    3: 'Off Market',
    4: 'Sold',
    5: 'Under Offer',
  };

  final Map<String, int> reverseStatusMap = {
    'Active': 1,
    'Deleted': 2,
    'Off Market': 3,
    'Sold': 4,
    'Under Offer': 5,
  };
  final Map<int, String> agreementTypeMap = {
    1: 'Auction',
    2: 'Exclusive',
    3: 'Multi List',
    4: 'Open',
    5: 'Set Sale',
  };

  final Map<String, int> reverseAgreementTypeMap = {
    'Auction': 1,
    'Exclusive': 2,
    'Multi List': 3,
    'Open': 4,
    'Set Sale': 5,
  };
  final _formKey = GlobalKey<FormState>();
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
    final propertData = ref.watch(listingParamsDataProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Radio Button Row
                    Row(
                      children: List.generate(option.length, (index) {
                        return Row(
                          children: [
                            Radio<String>(
                              activeColor: Colors.black,
                              value: option[index],
                              groupValue: currentOption,
                              onChanged: (value) {
                                if (value == null) return;
                                final mappedValue =
                                    getMappedValue(value); // 1 or 2

                                ref
                                    .read(listingParamsDataProvider.notifier)
                                    .update(
                                      (p) => p.copyWith(
                                          propertySaleRental: mappedValue),
                                    );

                                setState(() {
                                  currentOption = value;
                                  selectedValue = mappedValue;
                                });

                                print(
                                    'Selected: $value → Mapped to: $mappedValue');
                              },
                            ),
                            Text(
                              option[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: const Color(0xFF494D60)),
                            ),
                            if (index < option.length - 1)
                              SizedBox(width: 20.w),
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
                          validator: (value) {
                            if (value == null) {
                              return 'Please select an option';
                            }
                            return null;
                          },
                          propertyOptions: statusMap.values.toList(),
                          selectedValue:
                              statusMap[propertData.listingStatus] ?? 'Active',
                          onChanged: (String? value) {
                            final intValue = reverseStatusMap[value!]!;
                            print('Selected listingStatus: $intValue');

                            ref.read(listingParamsDataProvider.notifier).update(
                                  (p) => p.copyWith(listingStatus: intValue),
                                );
                          },
                          hintText: 'Listing Status',
                        ),

                        //   16.verticalSpace,
                        if (currentOption == 'Sell') ...[
                          16.verticalSpace,
                          Text(
                            'Agreement Type',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          12.verticalSpace,
                          WidgetDropdown(
                            validator: (value) {
                              if (value == null) {
                                return 'Please select an option';
                              }
                              return null;
                            },
                            propertyOptions: agreementTypeMap.values.toList(),

                            selectedValue: agreementTypeMap[
                                    propertData.propertyAgreementType] ??
                                'Exclusive',

                            onChanged: (String? value) {
                              final intValue = reverseAgreementTypeMap[value!]!;
                              print('Selected agreementType: $intValue');

                              ref
                                  .read(listingParamsDataProvider.notifier)
                                  .update(
                                    (p) => p.copyWith(
                                        propertyAgreementType: intValue),
                                  );
                            },
                            hintText: 'Agreement Type',
                          ),
                        ],

                        16.verticalSpace,
                        if (currentOption == 'Rent') ...[
                          Text(
                            'Rental Price',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          12.verticalSpace,
                          CommonTextField(
                              controller: rentalPriceController,
                              label: 'Rental Price',
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Property price is required';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                final trimmed = value.trim();
                                if (trimmed.isNotEmpty &&
                                    int.tryParse(trimmed) != null) {
                                  final parsed = int.parse(trimmed);
                                  print("Updating rentPrice: $parsed");
                                  ref
                                      .read(listingParamsDataProvider.notifier)
                                      .update(
                                        (p) => p.copyWith(rentPrice: parsed),
                                      );
                                }
                              }),
                        ] else ...[
                          Text(
                            'Property Price',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          12.verticalSpace,
                          CommonTextField(
                            // initialValue: propertData.propertyPrice != null &&
                            //             propertData.propertyPrice!.
                            //         ? propertData.propertyPrice
                            //         : null,
                            controller: propertyPriceController,
                            label: 'Property Price',
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Property price is required';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                ref
                                    .read(listingParamsDataProvider.notifier)
                                    .update(
                                      (p) => p.copyWith(
                                          propertyPrice: int.parse(value)),
                                    );
                              }
                            },
                          ),
                        ],

                        16.verticalSpace,
                        Text(
                          ' Is Commercial',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        WidgetDropdown(
                          propertyOptions: const ['Yes', 'No'],
                          validator: (value) {
                            if (value == null) {
                              return 'Please select an option';
                            }
                            return null;
                          },
                          selectedValue:
                              ref.watch(propertyListingProvider).isCommercial ==
                                      true
                                  ? 'Yes'
                                  : 'No', // Defaults to 'No' if null or false
                          onChanged: (String? value) {
                            final bool boolValue = value == 'Yes';
                            ref.read(listingParamsDataProvider.notifier).update(
                                (p) => p.copyWith(isCommercial: boolValue));
                          },
                        ),

                        16.verticalSpace,
                        Text(
                          'New or Established',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        WidgetDropdown(
                          propertyOptions: const ['New', 'Established'],
                          selectedValue: (ref
                                          .watch(propertyListingProvider)
                                          .listingAgent ??
                                      1) ==
                                  1
                              ? 'New'
                              : 'Established',
                          onChanged: (String? value) {
                            int intValue = value == 'New' ? 1 : 2;
                            ref
                                .read(propertyListingProvider.notifier)
                                .updateField('listingAgent', intValue);
                          },
                        ),
                        16.verticalSpace,
                        Text(
                          'Listing Agent',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        WidgetDropdown(
                          propertyOptions: const ['Agent 1', 'Agent 2'],
                          selectedValue: (ref
                                          .watch(propertyListingProvider)
                                          .listingAgent ??
                                      1) ==
                                  1
                              ? 'Agent 1'
                              : 'Agent 2',
                          onChanged: (String? value) {
                            int intValue = value == 'Agent 1' ? 1 : 2;
                            ref
                                .read(propertyListingProvider.notifier)
                                .updateField('listingAgent', intValue);
                          },
                        ),

                        16.verticalSpace,
                        Text(
                          'Dual Agent',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        WidgetDropdown(
                          propertyOptions: const ['Yes', 'No'],
                          validator: (value) {
                            if (value == null) {
                              return 'Please select an option';
                            }
                            return null;
                          },
                          selectedValue:
                              (ref.watch(propertyListingProvider).dualAgent ??
                                      false)
                                  ? 'Yes'
                                  : 'No',
                          onChanged: (String? value) {
                            final bool boolValue = value == 'Yes';
                            print(boolValue);
                            ref.read(listingParamsDataProvider.notifier).update(
                                (p) => p.copyWith(isDualAgent: boolValue));
                          },
                        ),

                        16.verticalSpace,
                        if (currentOption == "Sell") ...[
                          Text(
                            'Show Price',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          12.verticalSpace,
                          WidgetDropdown(
                            propertyOptions: const ['Yes', 'No'],
                            // validator: (value) {
                            //   if (value == null) {
                            //     return 'Please select an option';
                            //   }
                            //   return null;
                            // },
                            selectedValue:
                                ref.watch(propertyListingProvider).showPrice ==
                                        null
                                    ? null
                                    : ref
                                                .watch(propertyListingProvider)
                                                .showPrice ==
                                            true
                                        ? 'Yes'
                                        : 'No',
                            onChanged: (String? value) {
                              bool boolValue = value ==
                                  'No'; // 'true' => true, 'false' => false
                              print(boolValue); // Debug print
                              // ref
                              //     .read(propertyListingProvider.notifier)
                              //     .updateField('showPrice', boolValue);
                              ref
                                  .read(listingParamsDataProvider.notifier)
                                  .update((p) =>
                                      p.copyWith(isShowPrice: boolValue));
                            },
                            hintText: 'Show Price',
                          ),
                          16.verticalSpace,
                          Text(
                            'Show Text',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          12.verticalSpace,
                          CommonTextField(
                              controller: showTextController,
                              label: 'Show Text',
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  ref
                                      .read(listingParamsDataProvider.notifier)
                                      .update(
                                        (p) => p.copyWith(showText: value),
                                      );
                                }
                              }),
                        ],

                        16.verticalSpace,
                        if (currentOption == 'Rent') ...[
                          Text(
                            'Date Available ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          12.verticalSpace,
                          DatePickerDropdown(
                            selectedDate: selectedDate,
                            onDateSelected: (date) {
                              setState(() {
                                selectedDate = date;
                                print("Selected Date: $date");
                              });
                              ref
                                  .read(listingParamsDataProvider.notifier)
                                  .update(
                                      (p) => p.copyWith(dateAvailable: date));
                            },
                            hintText: 'Choose Date',
                          ),
                        ],

                        32.verticalSpace,
                      ],
                    )
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
                    onClick: () {
                      print('hii');

                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        ref
                            .read(propertyNotifierProvider.notifier)
                            .addPropertyListing();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
