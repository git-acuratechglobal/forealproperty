import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/searchbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_list_provider.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/appsnackbar.dart';
import '../../model/property_for_inspection.dart';

class AddInspection extends HookConsumerWidget {
  const AddInspection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> propertyOptions = ['Routine', 'Entry', 'Exit'];
    final formKey = useRef(GlobalKey<FormState>());
    final propertyId = useState<int?>(null);
    final selectedValue = useState<String?>(null);
    final selectedDate = useState<String?>(null);
    final selectedStartTime = useState<String?>(null);
    final selectedEndTime = useState<String?>(null);
    final searchController = useMemoized(() => TextEditingController(), []);
    final addInspectionParam = ref.read(addInspectionParamProvider.notifier);
    final searchQuery = useState('');
    final showList = useState(false);
    final debouncedSearchQuery =
        useDebounced(searchQuery.value, const Duration(milliseconds: 600));

    useEffect(() {
      if (debouncedSearchQuery != null) {
        ref
            .read(searchPropertyForInspectionProvider.notifier)
            .searchProperty(search: debouncedSearchQuery);
        showList.value = true;
      }
      return null;
    }, [debouncedSearchQuery]);
    useEffect(() {
      ref.listenManual(inspectionNotifierProvider, (_, next) {
        switch (next) {
          case AsyncData<String?> data when data.value != null:
            final decodeData = jsonDecode(data.value!);
            final inspectionId = decodeData['id'];
            final inspectionUniId = decodeData['sUID'];
            final msg = decodeData['message'];
            ref.invalidate(inspectionListNotifierProvider);
            Utils.showSnackBar(context, msg);
            context.pushReplacementNamed('inspection-details', pathParameters: {
              'inspectionId': inspectionId.toString(),
              'inspectionUniqueId': inspectionUniId
            });
            break;
          case AsyncError error:
            Utils.showSnackBar(context, error.error.toString());
            break;
        }
      });
      return null;
    }, []);

    // ref.listen(inspectionListNotifierProvider(tabId: 1),
    //         (_, next) {
    //       next.whenData((data) {
    //         final inspectionData = data.data
    //             .firstWhere((e) => e.propertyId == propertyId.value);
    //         context.pushReplacementNamed('inspection-details',
    //             pathParameters: {
    //               'inspectionId': inspectionData.inspectionId.toString(),
    //               'inspectionUniqueId':
    //               inspectionData.inspectionUniqueId ?? ''
    //             });
    //       });
    //     });

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
          key: formKey.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SubHeadingText(
                text: 'Choose Property',
              ),
              12.verticalSpace,
              CustomSearchFiled<PropertyForInspection>(
                onClear: () => showList.value = false,
                showList: showList.value,
                controller: searchController,
                items:
                    ref.watch(searchPropertyForInspectionProvider).value ?? [],
                onSearch: (val) {
                  searchQuery.value = val;
                },
                onSelected: (val) {
                  if (val != null) {
                    propertyId.value = val.id;
                    final listingId = val.listingId;
                    debugPrint('Selected Property ID: $propertyId');
                    debugPrint('Selected Listing ID: $listingId');
                    addInspectionParam.update((e) => e.copyWith(
                          PropertyId: propertyId.value!,
                          LoggedUserId: 2,
                          CreatedBy: 2,
                          Summary: "Inspection for entry",
                          AgencyId: 1,
                        ));
                  }
                },
                displayString: (item) => item.name ?? 'No Name',
              ),
              16.verticalSpace,
              const SubHeadingText(
                text: 'Inspection Type',
              ),
              12.verticalSpace,
              WidgetDropdown(
                propertyOptions: propertyOptions,
                selectedValue: selectedValue.value,
                onChanged: (String? value) {
                  if (value != null) {
                    final index = propertyOptions.indexOf(value);
                    if (index != -1) {
                      selectedValue.value = value;

                      addInspectionParam
                          .update((e) => e.copyWith(InspectionType: index + 1));
                    }
                  }
                },
                hintText: 'Select Property Type',
              ),
              16.verticalSpace,
              const SubHeadingText(
                text: 'Date',
              ),
              12.verticalSpace,
              DatePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                selectedDate: selectedDate.value,
                onDateSelected: (date) {
                  selectedDate.value = date;
                  print("Selected Date: $date");
                  final dateTime = DateFormat("dd-MM-yyyy").parse(date!);
                  final formattedDate =
                      DateFormat('yyyy-MM-dd').format(dateTime);
                  addInspectionParam
                      .update((e) => e.copyWith(InspectionDate: formattedDate));
                },
                hintText: 'mm-dd-yyyy',
              ),
              16.verticalSpace,
              const SubHeadingText(
                text: 'Start Time',
              ),
              12.verticalSpace,
              TimePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                minTime: selectedStartTime.value != null
                    ? parseTimeOfDay(selectedStartTime.value!)
                    : null,
                selectedTime: selectedStartTime.value,
                onTimeSelected: (time) {
                  print("Selected Time: $time");
                  selectedStartTime.value = time;
                  final startDateTime = parseTime(time!);
                  final endDateTime = startDateTime.add(const Duration(hours: 2));
                  final endTimeString = formatTime(endDateTime);
                  selectedEndTime.value = endTimeString;
                },
                onChanged: (val) {
                  addInspectionParam.update((e) => e.copyWith(StartTime: val));
                },
              ),
              16.verticalSpace,
              const SubHeadingText(
                text: 'End Time',
              ),
              12.verticalSpace,
              TimePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                minTime: selectedEndTime.value != null
                    ? parseTimeOfDay(selectedEndTime.value!)
                    : null,
                selectedTime: selectedEndTime.value,
                onTimeSelected: (time) {
                  selectedEndTime.value = time;
                },
                onChanged: (val) {
                  addInspectionParam.update((e) => e.copyWith(EndTime: val));
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
  DateTime parseTime(String timeString) {
    final clean = timeString
        .replaceAll('\u202F', ' ') // narrow no-break space
        .replaceAll('\u00A0', ' ') // non-breaking space
        .trim();
    final format = DateFormat.jm();
    return format.parse(clean);
  }

  String formatTime(DateTime dateTime) {
    final format = DateFormat.jm(); // "h:mm a"
    return format.format(dateTime);
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
