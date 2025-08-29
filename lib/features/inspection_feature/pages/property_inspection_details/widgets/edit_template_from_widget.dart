import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../../../core/utils/imagepicker.dart';
import '../../../model/property_inspection_view_model.dart';
//
// class EditTemplateFromWidget extends HookWidget {
//   final PropertyInspectionViewModel initialData;
//   final void Function(PropertyInspectionViewModel) onChanged;
//   final VoidCallback onNext;
//    final bool isLoading;
//   const EditTemplateFromWidget({
//     super.key,
//     required this.initialData,
//     required this.onChanged,
//     required this.onNext,
//     this.isLoading = false,
//   });
//
// //   @override
// //   State<EditTemplateFromWidget> createState() =>
// //       _EditTemplateFromWidgetState();
// // }
// //
// // class _EditTemplateFromWidgetState extends State<EditTemplateFromWidget> {
// //   late PropertyInspectionViewModel formData;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     formData = widget.initialData;
// //     print("========This is printing multiple times==========");
// //   }
// //
// //   void _update(PropertyInspectionViewModel data) {
// //     widget.onChanged(data);
// //    setState(() {
// //      formData=data;
// //    });
// //    print(data.toString());
// //   }
//
//   @override
//   Widget build(BuildContext context) {
//     final formData = useState(initialData);
//
//     return SingleChildScrollView(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Available Toggle
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Available',
//                 style: TextStyle(
//                     color: const Color(0xFF1A1B28),
//                     fontSize: 15.sp,
//                     fontWeight: FontWeight.w700),
//               ),
//               SizedBox(
//                 width: 48,
//                 height: 28,
//                 child: CustomCupertinoToggle(
//                   initialValue: formData.available,
//                   trueLabel: 'Y',
//                   falseLabel: 'N',
//                   onChanged: (val) =>
//                       _update(formData.copyWith(available: val)),
//                 ),
//               ),
//             ],
//           ),
//           24.verticalSpace,
//
//           Row(
//             children: [
//               ToggleContainer(
//                 label: 'Clean',
//                 initialValue: formData.clean,
//                 onToggle: (val) => _update(formData.copyWith(clean: val)),
//               ),
//               15.horizontalSpace,
//               ToggleContainer(
//                 label: 'Undamage',
//                 initialValue: formData.unDamage,
//                 onToggle: (val) => _update(formData.copyWith(unDamage: val)),
//               ),
//               15.horizontalSpace,
//               ToggleContainer(
//                 label: 'Working',
//                 initialValue: formData.working,
//                 onToggle: (val) => _update(formData.copyWith(working: val)),
//               ),
//             ],
//           ),
//           24.verticalSpace,
//
//           // Image Picker
//           Text(
//             'Property Images',
//             style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
//           ),
//           16.verticalSpace,
//           ImagePickerForm2(
//             context: context,
//              initialImages: formData.initialImages,
//             onSaved: (newImages) {
//               _update(formData.copyWith(images: newImages));
//             },
//           ),
//           24.verticalSpace,
//
//           // Comment Box
//           Text(
//             'Comments',
//             style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
//           ),
//           12.verticalSpace,
//           CommonTextField(
//             label: 'Enter comment...',
//             maxLines: 5,
//             initialValue: formData.comments,
//             onChanged: (val) => _update(formData.copyWith(comments: val)),
//           ),
//           24.verticalSpace,
//
//           // Next Button
//           PrimaryButton(
//               isLoading: widget.isLoading,
//               title: 'Next', onClick: widget.onNext)
//         ],
//       ),
//     );
//   }
// }

class EditTemplateFromWidget extends HookWidget {
  final PropertyInspectionViewModel initialData;
  final void Function(PropertyInspectionViewModel) onChanged;
  final VoidCallback onNext;
  final bool isLoading;

  const EditTemplateFromWidget({
    super.key,
    required this.initialData,
    required this.onChanged,
    required this.onNext,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final formData = useState<PropertyInspectionViewModel>(initialData);

    void _update(PropertyInspectionViewModel data) {
      formData.value = data;
      // onChanged(data);
    }

    final formKey = useMemoized(() => GlobalKey<FormState>());
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Available',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 48,
                height: 28,
                child: CustomCupertinoToggle(
                  initialValue: formData.value.available,
                  trueLabel: 'Y',
                  falseLabel: 'N',
                  onChanged: (val) =>
                      _update(formData.value.copyWith(available: val)),
                ),
              ),
            ],
          ),
          24.verticalSpace,

          Row(
            children: [
              ToggleContainer(
                label: 'Clean',
                initialValue: formData.value.clean,
                onToggle: (val) =>
                    _update(formData.value.copyWith(clean: val)),
              ),
              15.horizontalSpace,
              ToggleContainer(
                label: 'Undamage',
                initialValue: formData.value.unDamage,
                onToggle: (val) =>
                    _update(formData.value.copyWith(unDamage: val)),
              ),
              15.horizontalSpace,
              ToggleContainer(
                label: 'Working',
                initialValue: formData.value.working,
                onToggle: (val) =>
                    _update(formData.value.copyWith(working: val)),
              ),
            ],
          ),
          24.verticalSpace,

          // Image Picker
          Text(
            'Property Images',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
          ),
          16.verticalSpace,
          ImagePickerForm2(
            context: context,
            initialImages: formData.value.initialImages,
            onSaved: (newImages) {
              _update(formData.value.copyWith(images: newImages));
            },
          ),
          24.verticalSpace,

          // Comment Box
          Text(
            'Comments',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
          ),
          12.verticalSpace,
          CommonTextField(
            label: 'Enter comment...',
            maxLines: 5,
            initialValue: formData.value.comments,
            onChanged: (val) =>
                _update(formData.value.copyWith(comments: val)),
          ),
          24.verticalSpace,

          // Next Button
          PrimaryButton(
            isLoading: isLoading,
            title: 'Next',
            onClick: () {
              if (formKey.currentState?.validate() ?? false) {
                formKey.currentState?.save();
                onChanged(formData.value);

                onNext();
              }
            },
          ),
        ],
      ),
    );
  }
}
