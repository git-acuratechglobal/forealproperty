import 'package:flutter/material.dart';
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
                  side: BorderSide(color: Color(0xFFDEDEDE)),
                  activeColor: Color(0xFF164C63),
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
  final List<String> propertyOptions;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final String hintText;

  const WidgetDropdown({
    super.key,
    required this.propertyOptions,
    required this.selectedValue,
    required this.onChanged,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final validValue =
        propertyOptions.contains(selectedValue) ? selectedValue : null;

    return DropdownButtonFormField<String>(
      value: validValue,
      hint: Text(
        hintText,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
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
      items: propertyOptions.toSet().map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null) {
          int selectedIndex = propertyOptions.indexOf(newValue);
          print("Selected Index: $selectedIndex");
          onChanged(newValue); // Call the original onChanged callback
        }
      },
    );
  }
}

class CommonTextField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final FormFieldSetter<String>? onSaved;
  final validator;

  const CommonTextField({
    super.key,
    required this.label,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.obscureText = false,
    this.onSaved,
    String? initialValue,
    this.validator,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      cursorColor: Colors.black,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      decoration: InputDecoration(
        hintText: widget.label,
        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
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
