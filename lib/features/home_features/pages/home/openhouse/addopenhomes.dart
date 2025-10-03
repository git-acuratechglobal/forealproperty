import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/core/utils/searchbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart' show AsyncWidget;
import 'package:foreal_property/features/home_features/add_property_params/open_home_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';
import 'package:foreal_property/features/home_features/models/get_openhomelist_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/house.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/uploadpropert.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';
import 'package:intl/intl.dart';

class Addopenhomes extends ConsumerStatefulWidget {
  final int? propertyType;
  final int? propertyId;
  final int? listingId;
  final int? propertySaleRental;
  final GetOpenHomeListModel? openHome;
  const Addopenhomes(
      {super.key,
      this.propertyId,
      this.listingId,
      this.propertyType,
      this.propertySaleRental,
      this.openHome});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddopenhomesState();
}

class _AddopenhomesState extends ConsumerState<Addopenhomes> {
  String? selectedValue;
  String? selectedDate;
  String? selectedTime;
  String? _selectedTime;
  int _propertyType = 1;
  @override
  void initState() {
    if (widget.propertyType != null) {
      _propertyType = widget.propertyType!;
    }
    super.initState();

    ref.listenManual(propertyNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<AddPropertyState?> data when data.value != null:
          final addPropertyState = data.value;

          WidgetsBinding.instance.addPostFrameCallback((_) {
            Utils.showSnackBar(context, addPropertyState?.response ?? "");

            if (addPropertyState?.addPropertyEvent ==
                AddPropertyEvent.addOpenHome) {}
          });
      }
    });
  }

  void _showDialog(BuildContext context, int targetTabIndex) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      barrierColor: Colors.black.withValues(alpha: 0.3), // fixed dim layer
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Uploadpropert(
              targetTabIndex: targetTabIndex,
              onNavigateTo: () => const House(
                selectTab: 1,
              ),
            ), // 👈 Keep blur inside this widget
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  final _formKey = GlobalKey<FormState>();
  PropertyListingList? selectedProperty;

  @override
  Widget build(BuildContext context) {
    final propertyData = ref.watch(getPropertyListingProvider(_propertyType));
    print(widget.propertySaleRental);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Add Open Homes',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.verticalSpace,
                  if (widget.propertyId == null ||
                      widget.listingId == null) ...[
                    Text('Choose Property',
                        style: Theme.of(context).textTheme.bodyLarge),
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
                              // final propertylistingStatus =
                              //     val.propertySaleRental;

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
                  ],

                  // /// Property Dropdown

                  /// Date Picker
                  16.verticalSpace,
                  Text('Date', style: Theme.of(context).textTheme.bodyLarge),
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
                      ref
                          .read(openHomeParamsDataProvider.notifier)
                          .update((p) => p.copyWith(eventDate: date));
                    },
                    hintText: 'mm-dd-yyyy',
                  ),

                  /// Start Time
                  16.verticalSpace,
                  Text('Start Time',
                      style: Theme.of(context).textTheme.bodyLarge),
                  12.verticalSpace,
                  TimePickerDropdown(
                    validator: (value) => value == null || value.trim().isEmpty
                        ? 'This field is required'
                        : null,
                    selectedTime: selectedTime,
                    onTimeSelected: (time) {
                      // final propertyType = selectedProperty?.propertySaleRental;
                      // final isSale = propertyType == 1;
                      // final isRental = propertyType == 2;
                      final propertyType =
                          selectedProperty?.propertySaleRental ??
                              widget.propertySaleRental;
                      final isSale = propertyType == 1;
                      final isRental = propertyType == 2;

                      String? calculatedEndTime;
                      if ((isSale || isRental) && time != null) {
                        final start = parseTimeOfDay(time);
                        final extraMinutes = isSale ? 30 : 15;
                        final totalMinutes =
                            start.hour * 60 + start.minute + extraMinutes;
                        final autoEnd = TimeOfDay(
                          hour: (totalMinutes ~/ 60) % 24,
                          minute: totalMinutes % 60,
                        );
                        calculatedEndTime = autoEnd.format(context);
                      }

                      // Post-frame callback to safely update state & provider
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!mounted) return;
                        setState(() {
                          selectedTime = time;
                          if (calculatedEndTime != null) {
                            _selectedTime = calculatedEndTime;
                          }
                        });

                        ref.read(openHomeParamsDataProvider.notifier).update(
                              (p) => p.copyWith(startTime: time),
                            );
                        if (calculatedEndTime != null) {
                          ref.read(openHomeParamsDataProvider.notifier).update(
                                (p) => p.copyWith(endTime: calculatedEndTime),
                              );
                        }
                      });
                    },
                  ),

                  /// End Time
                  16.verticalSpace,
                  Text('End Time',
                      style: Theme.of(context).textTheme.bodyLarge),
                  12.verticalSpace,
                  TimePickerDropdown(
                    validator: (value) => value == null || value.trim().isEmpty
                        ? 'This field is required'
                        : null,
                    minTime: selectedTime != null
                        ? parseTimeOfDay(selectedTime!)
                        : null,
                    selectedTime: _selectedTime,
                    onTimeSelected: (time) {
                      setState(() {
                        _selectedTime = time;
                      });
                      ref
                          .read(openHomeParamsDataProvider.notifier)
                          .update((p) => p.copyWith(endTime: time));
                    },
                  ),

                  24.verticalSpace,
                  PrimaryButton(
                    isLoading: ref.watch(propertyNotifierProvider).isLoading,
                    title: 'Add Now',
                    onClick: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ref
                            .read(propertyNotifierProvider.notifier)
                            .addUpdateOpenHome();
                        _showDialog(context, 1);
                        // Future.delayed(Duration(milliseconds: 800), () {
                        //   ref.read(selectedTabIndexProvider.notifier).state = 3;
                        //   Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => const HomeScreen(selectTab: 3)),
                        //   );
                        // });
                      }
                    },
                  ),
                ],
              ),
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

class DatePickerDropdown extends StatefulWidget {
  final String? selectedDate;
  final void Function(String?) onDateSelected;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isSelectAnyDate;
  final isfromAgreement;
  const DatePickerDropdown({
    Key? key,
    this.selectedDate,
    required this.onDateSelected,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hintText = 'Choose Date',
    this.isSelectAnyDate = false,
    this.isfromAgreement=false
  }) : super(key: key);

  @override
  State<DatePickerDropdown> createState() => _DatePickerDropdownState();
}

class _DatePickerDropdownState extends State<DatePickerDropdown> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.selectedDate,
    );
  }

  @override
  void didUpdateWidget(covariant DatePickerDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDate != widget.selectedDate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _controller.text =
            widget.selectedDate != null ? widget.selectedDate! : '';
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      readOnly: true,
      onTap: () async {
        DateTime now = DateTime.now();
        DateTime initialDate = widget.selectedDate != null
            ? DateFormat('dd-MM-yyyy')
                .parse(widget.selectedDate!)
            : now;

        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: widget.isSelectAnyDate
              ? DateTime(1900)
              : DateTime(now.year, now.month, now.day),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          final formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
          widget.onDateSelected(formattedDate);
          widget.onChanged?.call(formattedDate);
          _controller.text = formattedDate;
        }
      },
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: const Color(0XFFa0a4b0),
            fontSize: 14.sp,
            fontWeight: FontWeight.w800),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE2E2E2)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      ),
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w800),
      onSaved: widget.onSaved,
    );
  }
}

class DatePickerDropdown2 extends StatefulWidget {
  final String? selectedDate; // Format: yyyy-MM-dd
  final void Function(DateTime?) onDateSelected;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String hintText;
  final String? Function(String?)? validator;

  const DatePickerDropdown2({
    Key? key,
    this.selectedDate,
    required this.onDateSelected,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hintText = 'Choose Date',
  }) : super(key: key);

  @override
  State<DatePickerDropdown2> createState() => _DatePickerDropdown2State();
}

class _DatePickerDropdown2State extends State<DatePickerDropdown2> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.selectedDate,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      readOnly: true,
      onTap: () async {
        DateTime now = DateTime.now();
        DateTime initialDate = widget.selectedDate != null
            ? DateFormat('dd-MM-yyyy').parse(widget.selectedDate!)
            : now;

        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initialDate.isAfter(now) ? now : initialDate,
          firstDate: DateTime(2000),
          lastDate: now,
        );

        if (pickedDate != null) {
          final formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
          widget.onDateSelected(pickedDate);
          widget.onChanged?.call(formattedDate);
          _controller.text = formattedDate;
        }
      },
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: const Color(0XFFa0a4b0),
            fontSize: 14.sp,
            fontWeight: FontWeight.w800),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE2E2E2)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      ),
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w800),
      onSaved: widget.onSaved,
    );
  }
}

// class TimePickerDropdown extends StatefulWidget {
//   final String? selectedTime;
//   final void Function(String?) onTimeSelected;
//   final String hintText;
//   final void Function(String)? onChanged;
//   final TimeOfDay? initialTime;
//   final TimeOfDay? minTime;
//   final TimeOfDay? maxTime;

//   const TimePickerDropdown({
//     Key? key,
//     this.onChanged,
//     this.selectedTime,
//     required this.onTimeSelected,
//     this.hintText = 'Choose Time',
//     this.initialTime,
//     this.minTime,
//     this.maxTime,
//   }) : super(key: key);

//   @override
//   _TimePickerDropdownState createState() => _TimePickerDropdownState();
// }

// class _TimePickerDropdownState extends State<TimePickerDropdown> {
//   final TextEditingController _controller = TextEditingController();
//   String? errorText;

//   @override
//   void initState() {
//     super.initState();
//     _controller.text = widget.selectedTime ?? '';
//   }

//   @override
//   void didUpdateWidget(TimePickerDropdown oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.selectedTime != oldWidget.selectedTime) {
//       _controller.text = widget.selectedTime ?? '';
//     }
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   /// ✅ Ensure picked time is at least 15 minutes after `minTime`
//   bool _isAtLeast15MinutesAfter(TimeOfDay pickedTime) {
//     if (widget.minTime == null) return true;

//     final pickedInMinutes = pickedTime.hour * 60 + pickedTime.minute;
//     final minInMinutes = widget.minTime!.hour * 60 + widget.minTime!.minute;

//     return pickedInMinutes >= minInMinutes + 15;
//   }

//   String _getValidationErrorMessage() {
//     if (widget.minTime == null) return '';
//     final minTime = widget.minTime!;
//     final requiredEndTime = TimeOfDay(
//       hour: (minTime.hour + ((minTime.minute + 15) ~/ 60)) % 24,
//       minute: (minTime.minute + 15) % 60,
//     );
//     return "Please select a time at least 15 minutes after the start time (${requiredEndTime.format(context)})";
//   }

//   @override
//   Widget build(BuildContext context) {
//     final borderRadius = BorderRadius.circular(12);
//     final borderColor =
//         errorText != null ? Colors.red : const Color(0xFFE2E2E2);

//     return TextFormField(
//       readOnly: true,
//       controller: _controller,
//       onTap: () async {
//         setState(() => errorText = null);

//         TimeOfDay initialTime = widget.initialTime ?? TimeOfDay.now();

//         TimeOfDay? pickedTime = await showTimePicker(
//           context: context,
//           initialTime: initialTime,
//         );

//         if (pickedTime != null) {
//           // ⏱ Round up to the nearest 5-minute mark
//           int roundedMinutes = (pickedTime.minute / 5).ceil() * 5;

//           if (roundedMinutes == 60) {
//             pickedTime = TimeOfDay(hour: (pickedTime.hour + 1) % 24, minute: 0);
//           } else {
//             pickedTime = TimeOfDay(hour: pickedTime.hour, minute: roundedMinutes);
//           }

//           if (!_isAtLeast15MinutesAfter(pickedTime)) {
//             setState(() => errorText = _getValidationErrorMessage());

//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(_getValidationErrorMessage()),
//                 backgroundColor: Colors.red,
//               ),
//             );
//             return;
//           }

//           final formattedTime = pickedTime.format(context);
//           _controller.text = formattedTime;
//           widget.onTimeSelected(formattedTime);
//           widget.onChanged?.call(formattedTime);
//         }
//       },
//       decoration: InputDecoration(
//         hintText: widget.hintText,
//         hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
//         errorText: errorText,
//         errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: borderColor),
//           borderRadius: borderRadius,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: borderColor),
//           borderRadius: borderRadius,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: borderColor),
//           borderRadius: borderRadius,
//         ),
//         errorBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.red),
//           borderRadius: borderRadius,
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.red),
//           borderRadius: borderRadius,
//         ),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
//       ),
//       style: TextStyle(
//         color: widget.selectedTime == null ? Colors.grey : Colors.black,
//         fontSize: 16,
//       ),
//     );
//   }
// }
class TimePickerDropdown extends StatefulWidget {
  final String? selectedTime;
  final void Function(String?) onTimeSelected;
  final String hintText;
  final void Function(String)? onChanged;
  final TimeOfDay? initialTime;
  final TimeOfDay? minTime;
  final TimeOfDay? maxTime;
  final String? Function(String?)? validator;

  const TimePickerDropdown({
    Key? key,
    this.onChanged,
    this.validator,
    this.selectedTime,
    required this.onTimeSelected,
    this.hintText = 'Choose Time',
    this.initialTime,
    this.minTime,
    this.maxTime,
  }) : super(key: key);

  @override
  _TimePickerDropdownState createState() => _TimePickerDropdownState();
}

class _TimePickerDropdownState extends State<TimePickerDropdown> {
  final TextEditingController _controller = TextEditingController();
  String? errorText;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.selectedTime ?? '';
  }

  @override
  void didUpdateWidget(TimePickerDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedTime != oldWidget.selectedTime) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _controller.text = widget.selectedTime ?? '';
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isAtLeast15MinutesAfter(TimeOfDay pickedTime) {
    if (widget.minTime == null) return true;

    final pickedInMinutes = pickedTime.hour * 60 + pickedTime.minute;
    final minInMinutes = widget.minTime!.hour * 60 + widget.minTime!.minute;

    return pickedInMinutes >= minInMinutes + 15;
  }

  String _getValidationErrorMessage() {
    if (widget.minTime == null) return '';
    final minTime = widget.minTime!;
    final requiredEndTime = TimeOfDay(
      hour: (minTime.hour + ((minTime.minute + 15) ~/ 60)) % 24,
      minute: (minTime.minute + 15) % 60,
    );
    return "Please select a time at least 15 minutes after the start time (${requiredEndTime.format(context)})";
  }

  void _showCupertinoTimerPicker() async {
    setState(() => errorText = null);

    final initial = widget.initialTime ?? TimeOfDay.now();
    Duration initialDuration =
        Duration(hours: initial.hour, minutes: initial.minute);
    Duration selectedDuration = initialDuration;

    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return SizedBox(
          height: 350,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Choose Time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF164C63),
                  ),
                ),
              ),
              Expanded(
                child: CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm,
                  initialTimerDuration: initialDuration,
                  onTimerDurationChanged: (Duration newDuration) {
                    selectedDuration = newDuration;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    TimeOfDay pickedTime = TimeOfDay(
      hour: selectedDuration.inHours,
      minute: selectedDuration.inMinutes % 60,
    );

    // ⏱ Round to nearest 5 minutes
    int roundedMinutes = (pickedTime.minute / 5).ceil() * 5;
    if (roundedMinutes == 60) {
      pickedTime = TimeOfDay(hour: (pickedTime.hour + 1) % 24, minute: 0);
    } else {
      pickedTime = TimeOfDay(hour: pickedTime.hour, minute: roundedMinutes);
    }

    if (!_isAtLeast15MinutesAfter(pickedTime)) {
      final error = _getValidationErrorMessage();
      setState(() => errorText = error);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
              backgroundColor: Colors.red,
            ),
          );
        }
      });
      return;
    }

    final formattedTime = pickedTime.format(context);
    _controller.text = formattedTime;
    widget.onTimeSelected(formattedTime);
    widget.onChanged?.call("${pickedTime.hour}:${pickedTime.minute}");
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12);
    final borderColor =
        errorText != null ? Colors.red : const Color(0xFFE2E2E2);

    return TextFormField(
      readOnly: true,
      controller: _controller,
      onTap: _showCupertinoTimerPicker,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: const Color(0XFFa0a4b0),
            fontSize: 14.sp,
            fontWeight: FontWeight.w800),
        errorText: errorText,
        errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: borderRadius,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: borderRadius,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: borderRadius,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      ),
      style: TextStyle(
        color: widget.selectedTime == null ? Colors.grey : Colors.black,
        fontSize: 16,
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Duration _selectedDuration = const Duration(hours: 6, minutes: 30);

  void showCustomTimerPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Set your next meeting time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm, // use hms if needed
                  initialTimerDuration: _selectedDuration,
                  onTimerDurationChanged: (Duration newDuration) {
                    setState(() {
                      _selectedDuration = newDuration;
                    });
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  print('Submitted: $_selectedDuration');
                },
                child: const Text('Done'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => showCustomTimerPicker(context),
        child: const Text("Open Timer Picker"),
      ),
    );
  }
}
