import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionalFeatures extends StatefulWidget {
  final List<String> outdoorfeatures;
  final List<String> selectedItems;
  final ValueChanged<List<String>>? onChanged;

  const OptionalFeatures(
    this.outdoorfeatures, {
    Key? key,
    this.selectedItems = const [],
    this.onChanged,
  }) : super(key: key);

  @override
  State<OptionalFeatures> createState() => _OptionalFeaturesState();
}

class _OptionalFeaturesState extends State<OptionalFeatures> {
  late List<String> selectedList;

  @override
  void initState() {
    super.initState();
    selectedList = List<String>.from(widget.selectedItems);
  }

  // Check if the feature is selected or not
  bool isSelected(String value) {
    return selectedList.contains(value);
  }

  void _handleChange(String value) {
    setState(() {
      if (selectedList.contains(value)) {
        selectedList.remove(value);
      } else {
        selectedList.add(value);
      }
    });

    if (widget.onChanged != null) {
      widget.onChanged!(selectedList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: widget.outdoorfeatures.length,
      itemBuilder: (context, index) {
        final feature = widget.outdoorfeatures[index];
        final isChecked = isSelected(feature); // Check if it's selected

        return CustomCheckBox(
          label: feature,
          isChecked: isChecked,
          onChange: (_) => _handleChange(feature),
        );
      },
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  final String label;
  final bool isChecked;
  final Function(String) onChange;
  const CustomCheckBox(
      {super.key,
      required this.label,
      required this.isChecked,
      required this.onChange});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool ischecked = false;
  @override
  void initState() {
    ischecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.white,
              ),
              child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  side: const BorderSide(color: Color(0xFFDEDEDE)),
                  activeColor: const Color(0xFF164C63),
                  value: ischecked,
                  onChanged: (value) {
                    setState(() {
                      ischecked = value!;
                      widget.onChange(widget.label);
                    });
                  }),
            ),
          ),
          Text(
            widget.label,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class WidgetDropdown extends StatelessWidget {
  final List<String>? propertyOptions;
  final String? selectedValue;
  final ValueChanged<String?>? onChanged;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  const WidgetDropdown(
      {super.key,
      this.validator,
      this.propertyOptions,
      this.selectedValue,
      this.onChanged,
      this.hintText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    final validValue =
        propertyOptions!.contains(selectedValue) ? selectedValue : null;

    return DropdownButtonFormField<String>(
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w800),
      value: validValue,
      hint: hintText != null
          ? Text(
              hintText!,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: const Color(0XFFa0a4b0),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800),
            )
          : null,
      icon: suffixIcon ?? const Icon(Icons.keyboard_arrow_down_outlined),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
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
      ),
      items: propertyOptions!.toSet().map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      validator: validator,
      onChanged: (String? newValue) {
        if (newValue != null) {
          onChanged?.call(newValue); // Call the original onChanged callback
        }
      },
    );
  }
}

class DynamicWidgetDropdown<T> extends StatelessWidget {
  final List<T>? propertyOptions;
  final T? selectedValue;
  final ValueChanged<T?>? onChanged;
  final String? hintText;
  final FormFieldValidator<T>? validator;
  final Widget? suffixIcon;
  final String Function(T)?
      displayText; // Function to convert T to display string

  const DynamicWidgetDropdown({
    super.key,
    this.validator,
    this.propertyOptions,
    this.selectedValue,
    this.onChanged,
    this.hintText,
    this.suffixIcon,
    this.displayText,
  });

  @override
  Widget build(BuildContext context) {
    final validValue =
        propertyOptions?.contains(selectedValue) == true ? selectedValue : null;

    return DropdownButtonFormField<T>(
      value: validValue,
      hint: hintText != null
          ? Text(
              hintText!,
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xffB9B9B9),
                fontWeight: FontWeight.w400,
              ),
            )
          : null,
      icon: suffixIcon ?? const Icon(Icons.keyboard_arrow_down_outlined),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
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
      ),
      items: propertyOptions?.toSet().map((option) {
        return DropdownMenuItem<T>(
          value: option,
          child: Text(_getDisplayText(option)),
        );
      }).toList(),
      validator: validator,
      onChanged: (T? newValue) {
        onChanged?.call(newValue);
      },
    );
  }

  String _getDisplayText(T option) {
    if (displayText != null) {
      return displayText!(option);
    }
    return option.toString();
  }
}

class CommonTextField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final FormFieldSetter<String>? onSaved;
  final dynamic initialValue;
  final String? Function(String?)? validator;
  final String? prefixText;
  final int? maxLines;
  final Widget? prefixIcon;

  /// Add inputFormatters here to allow customization
  final List<TextInputFormatter>? inputFormatters;

  const CommonTextField({
    super.key,
    required this.label,
    this.maxLines,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.obscureText = false,
    this.onSaved,
    this.initialValue,
    this.validator,
    this.inputFormatters,
    this.prefixText,
    this.prefixIcon,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  late TextEditingController? controller;
  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController();
    if (widget.initialValue != null) {
      controller?.text = widget.initialValue ?? "";
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      validator: widget.validator,
      controller: controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      cursorColor: Colors.black,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      inputFormatters: widget.inputFormatters,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 4, right: 4),
                child: widget.prefixIcon,
              )
            : (widget.prefixText != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Text(
                      widget.prefixText!,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                  )
                : null),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: widget.label,
        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFB9B9B9),
            ),
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
      ),
    );
  }
}

class ServiceContainer extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  final double? imageheight;
  final double? imagewidth;
  final String? title;
  final VoidCallback? onTap;
  final Color? color;

  const ServiceContainer(
      {super.key,
      this.imagePath,
      this.height,
      this.width,
      this.title,
      this.onTap,
      this.imageheight,
      this.imagewidth,
      this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath!,
                height: imageheight,
                width: imagewidth,
              ),
            13.verticalSpace,
            Text(title ?? '',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp)),
          ],
        ),
      ),
    );
  }
}

class ReportContainer extends StatelessWidget {
  final String? title;
  final List<ImageWithLetter>? imageItems; // ⬅️ updated
  final VoidCallback? onTap;

  const ReportContainer({super.key, this.title, this.imageItems, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 12,
                offset: Offset(0, 6),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              // Title
              Expanded(
                child: Text(
                  title ?? "",
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                ),
              ),

              // Dynamic Image + Letter Items
              Row(
                children: (imageItems ?? []).reversed.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          item.path,
                          height: 20.h,
                          width: 20.w,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item.letter,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),

              8.horizontalSpace,

              InkWell(
                //     onTap: onTap,
                child: Image.asset(
                  'assets/images/arrow-right.png',
                  color: Colors.black,
                  height: 12.h,
                  width: 12.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageWithLetter {
  final String path;
  final String letter;

  ImageWithLetter({required this.path, required this.letter});
}

class InspectionContainer extends StatefulWidget {
  final double? height;
  final double? width;
  final String? title;
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  const InspectionContainer({
    super.key,
    this.height,
    this.width,
    this.title,
    this.initialValue = true,
    this.onChanged,
  });

  @override
  State<InspectionContainer> createState() => _InspectionContainerState();
}

class _InspectionContainerState extends State<InspectionContainer> {
  late bool isSwitched;

  @override
  void initState() {
    super.initState();
    isSwitched = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 12,
            offset: Offset(0, 6),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AutoSizeText(
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              widget.title ?? "",
              style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          10.horizontalSpace,
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 51.0,
                height: 31.0,
                decoration: BoxDecoration(
                  color: !isSwitched ? Colors.red : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: CupertinoSwitch(
                  value: isSwitched,
                  activeTrackColor: const Color(0xFF91D35F),
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                    widget.onChanged?.call(value);
                  },
                ),
              ),
              SizedBox(
                width: 51.0,
                height: 31.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Align(
                    alignment: isSwitched
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Text(
                      isSwitched ? 'Y' : 'N',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ToggleContainer extends StatefulWidget {
  final bool? initialValue;
  final String? label;

  final void Function(bool)? onToggle;

  const ToggleContainer(
      {super.key, this.initialValue, this.label, this.onToggle});

  @override
  State<ToggleContainer> createState() => _ToggleContainerState();
}

class _ToggleContainerState extends State<ToggleContainer> {
  late bool isSwitched;

  @override
  void initState() {
    super.initState();
    isSwitched = widget.initialValue!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 99.h,
        width: 99.w,
        decoration: BoxDecoration(
          color: const Color(0xFFEBF3F5),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.label!,
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1A1B28)),
          ),
          10.verticalSpace,
          CustomCupertinoToggle(
            initialValue: widget.initialValue!,
            trueLabel: 'Y',
            falseLabel: 'N',
            onChanged: widget.onToggle,
          ),
        ]));
  }
}

class CustomCupertinoToggle extends HookWidget {
  final bool initialValue;
  final String trueLabel;
  final String falseLabel;
  final void Function(bool)? onChanged;

  const CustomCupertinoToggle({
    super.key,
    required this.initialValue,
    this.trueLabel = 'Y',
    this.falseLabel = 'N',
    this.onChanged,
  });

//   @override
//   State<CustomCupertinoToggle> createState() => _CustomCupertinoToggleState();
// }

// class _CustomCupertinoToggleState extends State<CustomCupertinoToggle> {
//   late bool isSwitched;
//
//   @override
//   void initState() {
//     super.initState();
//     isSwitched = widget.initialValue;
//   }

  @override
  Widget build(BuildContext context) {
    final isSwitched = useState(initialValue);
    useEffect(() {
      isSwitched.value = initialValue;
      return null;
    }, [initialValue]);

    return Stack(
      alignment: Alignment.center,
      children: [
        // Background with CupertinoSwitch
        Container(
          width: 51.0,
          height: 31.0,
          decoration: BoxDecoration(
            color: !isSwitched.value ? Colors.red : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: CupertinoSwitch(
            value: isSwitched.value,
            activeTrackColor: const Color(0xFF91D35F),
            onChanged: (value) {
              isSwitched.value = value;
              onChanged!(value);
            },
          ),
        ),

        // Label text positioned based on switch value
        SizedBox(
          width: 51.0,
          height: 31.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Align(
              alignment: isSwitched.value
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Text(
                isSwitched.value ? trueLabel : falseLabel,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CheckboxRowExample extends StatefulWidget {
  final String labelText;
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const CheckboxRowExample({
    super.key,
    required this.labelText,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _CheckboxRowExampleState createState() => _CheckboxRowExampleState();
}

class _CheckboxRowExampleState extends State<CheckboxRowExample> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
        widget.onChanged(isChecked);
      },
      child: Row(
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            checkColor: Colors.white,
            activeColor: const Color(0xFF164C63),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
              widget.onChanged(isChecked);
            },
          ),
          Text(
            widget.labelText,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
