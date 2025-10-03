import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/searchbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/add_property_params/open_home_params.dart';
import 'package:foreal_property/features/home_features/models/get_openhomelist_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';
import 'package:foreal_property/features/home_features/providers/openhomelist.dart';

class Edithomes extends ConsumerStatefulWidget {
  final GetOpenHomeListModel? propertyData;
  final int? propertyId;
  final int? listingId;
  final int? propertyType;
  final bool? isCurrent;
  const Edithomes(
      {super.key,
      this.listingId,
      this.propertyId,
      this.propertyData,
      this.propertyType,
      this.isCurrent});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EdithomesState();
}

class _EdithomesState extends ConsumerState<Edithomes> {
  String? selectedValue;
  String? selectedDate;
  String? selectedTime;
  String? _selectedTime;
  int _propertyType = 1;
  @override
  void initState() {
    super.initState();
    if (widget.propertyType != null) {
      _propertyType = widget.propertyType!;
    }
  }

  PropertyListingList? selectedProperty;
  @override
  Widget build(BuildContext context) {
    //final propertyDetail = ref.watch(getPropertyDetailProvider);
    final property = ref.watch(getPropertyListingProvider(_propertyType));
    final openHomes =
        ref.watch(openHomeListProvider(isCurrent: widget.isCurrent ?? true));
    return AsyncWidget(
        value: property,
        data: (openHomes) {
          //print("Property Value: '${propertyData?.openHomeList?[0].property}'");

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 690.h,
                // width: 327.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          50.horizontalSpace,
                          Text(
                            'Edit Open Homes',
                            style: TextStyle(
                              color: const Color(0xFF1A1B28),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          //  20.horizontalSpace,
                          InkWell(
                            onTap: () {
                              context.navPop();
                            },
                            child: Image.asset(
                              'assets/images/exit.png',
                              height: 15.h,
                              width: 15.w,
                            ),
                          )
                        ],
                      ),
                      24.verticalSpace,
                      const Divider(
                        height: 1,
                        color: Color(0xFFE2E2E2),
                      ),
                      24.verticalSpace,
                      Text(
                        'Choose Property',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      12.verticalSpace,
                      AsyncWidget(
                        value: property,
                        data: (propertydata) {
                          if (propertydata == null || propertydata.isEmpty) {
                            return const Text('No property found');
                          }

                          return DropdownSearchWidget<PropertyListingList>(
                            items: propertydata,
                            selectedValue: selectedProperty,
                            onChanged: (val) {
                              if (val != null) {
                                final propertyId = val.propertyId;
                                final listingId = val.listingId;

                                debugPrint('Selected Property ID: $propertyId');
                                debugPrint('Selected Listing ID: $listingId');
                                ref
                                    .read(openHomeParamsDataProvider.notifier)
                                    .update(
                                      (p) => p.copyWith(propertyId: propertyId),
                                    );
                                ref
                                    .read(openHomeParamsDataProvider.notifier)
                                    .update(
                                      (p) => p.copyWith(listingId: listingId),
                                    );

                                setState(() {
                                  selectedProperty = val;
                                });
                              }
                            },
                            itemAsString: (item) => item.address ?? 'No Name',
                            searchFilter: (item, query) => item.address ?? '',
                            hintText: 'Search',
                          );
                        },
                      ),
                      8.verticalSpace,
                      Container(
                        //    height: 114,
                        decoration: BoxDecoration(
                            color: const Color(0xFFEBF3F5),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/home3.png',
                                    height: 64,
                                    width: 80,
                                  ),
                                  12.horizontalSpace,
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bourke Villa',
                                        style: TextStyle(
                                          color: Color(0xFF1A1B28),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'Residential House ',
                                        style: TextStyle(
                                          color: Color(0xFF494D60),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Image.asset(
                                          'assets/images/ic_exit.png',
                                          height: 24,
                                          width: 24,
                                        )),
                                  )
                                ],
                              ),
                              6.verticalSpace,
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/location-3.png',
                                    height: 16.h,
                                    width: 16.w,
                                  ),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      openHomes![0].address ?? "",
                                      style: TextStyle(
                                        color: const Color(0xFF1A1B28),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 1.4,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      16.verticalSpace,
                      Text(
                        'Date',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      12.verticalSpace,
                      DatePickerDropdown(
                        //   initialValue: propertyData?.eventDate,
                        selectedDate: selectedDate,
                        onDateSelected: (date) {
                          setState(() {
                            selectedDate = date;
                            print("Selected Date: $date");
                          });
                          // ref
                          //     .read(openHomeParamsDataProvider.notifier)
                          //     .update((p) => p.copyWith(eventDate: date));
                        },
                        hintText: 'Choose Date',
                      ),
                      16.verticalSpace,
                      Text(
                        'Time',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      12.verticalSpace,
                      TimePickerDropdown(
                        selectedTime: selectedTime,
                        onTimeSelected: (time) {
                          setState(() {
                            selectedTime = time;
                            print("Selected time: $time");
                          });
                          // ref
                          //     .read(openHomeParamsDataProvider.notifier)
                          //     .update((p) => p.copyWith(startTime: time));
                        },
                      ),
                      16.verticalSpace,
                      Text(
                        'End Time',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      12.verticalSpace,
                      TimePickerDropdown(
                        selectedTime: _selectedTime,
                        onTimeSelected: (time) {
                          setState(() {
                            selectedTime = time;
                            print("Selected time: $time");
                          });
                          //   ref
                          //       .read(openHomeParamsDataProvider.notifier)
                          //       .update((p) => p.copyWith(startTime: time));
                        },
                      ),
                      24.verticalSpace,
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF164C63),
                            foregroundColor: const Color(0xFF164C63),
                            side: const BorderSide(
                              color: Color(0xFF164C63),
                            )),
                        onPressed: () {
                          // context.navigateTo(Verifyemail());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/add2.png',
                              height: 16.h,
                              width: 16.w,
                            ),
                            //  13.horizontalSpace,
                            Text(
                              'Save Changes',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
