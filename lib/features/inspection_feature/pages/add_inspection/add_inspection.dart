import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/searchbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_list_provider.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';

import '../../../../core/utils/appsnackbar.dart';

class AddInspection extends ConsumerStatefulWidget {
  const AddInspection({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddInspectionState();
}

class _AddInspectionState extends ConsumerState<AddInspection> {
  final _formKey = GlobalKey<FormState>();
  PropertyListingList? selectedProperty;

  int _propertyType = 1;
  final List<String> propertyOptions = ['Routine', 'Entry', 'Exit'];
  String? selectedValue;
  String? selectedDate;
  String? selectedStartTime;
  String? selectedEndTime;
  @override
  void initState() {
    super.initState();
    ref.listenManual(inspectionNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<String?> data when data.value != null:
          ref.invalidate(inspectionListNotifierProvider);
          context.pop();
          Utils.showSnackBar(context, data.value!);
          break;
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final propertyData = ref.watch(getPropertyListingProvider(_propertyType));
    final addInspectionParam = ref.read(addInspectionParamProvider.notifier);
    final user = ref.watch(userProvider);
    return Scaffold(

      appBar: AppBar(
        title: const Text('Add Inspection'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color(0XFFf2f6f7),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SubHeadingText(text: 'Choose Property',),
              12.verticalSpace,
              AsyncWidget(
                value: propertyData,
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
                        setState(() {
                          selectedProperty = val;
                        });
                        addInspectionParam.update((e) => e.copyWith(
                            PropertyId: propertyId!,
                            LoggedUserId: 2,
                            CreatedBy: 2,
                            Summary: "Inspection for entry",
                            AgencyId: 1,
                        ));
                      }
                    },
                    itemAsString: (item) => item.address ?? 'No Name',
                    searchFilter: (item, query) => item.address ?? '',
                    hintText: 'Search',
                  );
                },
              ),
              16.verticalSpace,
              const SubHeadingText(text: 'Inspection Type',
                  ),
              12.verticalSpace,
              WidgetDropdown(
                propertyOptions: propertyOptions,
                selectedValue: selectedValue,
                onChanged: (String? value) {
                  if (value != null) {
                    final index = propertyOptions.indexOf(value);
                    if (index != -1) {
                      setState(() {
                        selectedValue = value;
                      });
                      addInspectionParam
                          .update((e) => e.copyWith(InspectionType: index + 1));
                    }
                  }
                },
                hintText: 'Select Property Type',
              ),
              16.verticalSpace,
              const SubHeadingText(text: 'Date',),
              12.verticalSpace,
              DatePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                selectedDate: selectedDate,
                onDateSelected: (date) {
                  setState(() {
                    selectedDate = date;
                    print("Selected Date: $date");
                  });
                  addInspectionParam
                      .update((e) => e.copyWith(InspectionDate: selectedDate!));
                },
                hintText: 'mm-dd-yyyy',
              ),
              16.verticalSpace,
              const SubHeadingText(text: 'Start Time', ),
              12.verticalSpace,
              TimePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                minTime: selectedStartTime != null
                    ? parseTimeOfDay(selectedStartTime!)
                    : null,
                selectedTime: selectedStartTime,
                onTimeSelected: (time) {
                  setState(() {
                    selectedStartTime = time;
                  });
                },
                onChanged: (val) {
                  addInspectionParam
                      .update((e) => e.copyWith(StartTime: val));
                },
              ),
              16.verticalSpace,
              const SubHeadingText(text: 'End Time', ),
              12.verticalSpace,
              TimePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                minTime: selectedEndTime != null
                    ? parseTimeOfDay(selectedEndTime!)
                    : null,
                selectedTime: selectedEndTime,
                onTimeSelected: (time) {
                  setState(() {
                    selectedEndTime = time;
                  });
                },
                onChanged: (val) {
                  addInspectionParam
                      .update((e) => e.copyWith(EndTime: val));
                },
              ),
              24.verticalSpace,
              PrimaryButton(
                  isLoading: ref.watch(inspectionNotifierProvider).isLoading,
                  title: 'Next',
                  onClick: () {
                    ref
                        .read(inspectionNotifierProvider.notifier)
                        .addInspection();
                  })
            ],
          ),
        ),
      ),
    );
  }

  TimeOfDay parseTimeOfDay(String timeString) {
    final parts = timeString.split(' ');
    final timeParts = parts[0].split(':');
    int hour = int.parse(timeParts[0]);
    int minute = int.parse(timeParts[1]);
    final isPM = parts[1].toLowerCase() == 'pm';

    if (isPM && hour != 12) {
      hour += 12;
    } else if (!isPM && hour == 12) {
      hour = 0;
    }

    return TimeOfDay(hour: hour, minute: minute);
  }
}
