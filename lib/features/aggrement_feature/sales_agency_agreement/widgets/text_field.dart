import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTextFiled extends HookConsumerWidget {
  const AppTextFiled(
      {super.key,
      this.lable,
      required this.hintText,
      this.onChanged,
      this.prefixIcon,
      this.suffixIcon,
      this.controller,
      this.maxLines = 1,
      this.initialValue,
      this.isEditable = true,
      this.onSaved,
      this.maxLength,
      this.validator,
      this.inputType=TextInputType.text
      });
  final String? lable;
  final String hintText;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final int maxLines;
  final String? initialValue;
  final bool? isEditable;
  final int? maxLength;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalController =
        controller ?? useTextEditingController(text: initialValue);
    final _focusNode = useFocusNode();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (lable != null)
          Text(lable!,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey.shade700, fontSize: 13.sp)),
        if (lable != null) 8.verticalSpace,
        TextFormField(
          keyboardType: inputType,
          validator: validator,
          onTapOutside: (val) {
            _focusNode.unfocus();
          },
          focusNode: _focusNode,
          maxLength: maxLength,
          onSaved: onSaved,
          enabled: isEditable,
          maxLines: maxLines,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w800),
          controller: internalController,
          onChanged: onChanged,
          decoration: InputDecoration(
            counterText: '',
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
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
          ),
        ),
      ],
    );
  }
}
