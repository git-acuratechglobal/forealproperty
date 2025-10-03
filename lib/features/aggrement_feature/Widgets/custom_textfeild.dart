
// class CustomTextFeild extends ConsumerWidget {
//   final String label;
//    final String? hint;
//     final int? maxLines;
//     final int? minLines;
//   final Color? fillColor;
//   final Widget? prefixIcon;

//  final TextEditingController? controller;
//   void Function(String)? onChanged;
//    CustomTextFeild({super.key, required this.label,this.hint,this.fillColor,this.maxLines, this.minLines,this.onChanged,this.controller,this.prefixIcon});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//      final BorderRadius borderRadius = BorderRadius.circular(12);
//     final Color borderColor = const Color(0xFFE2E2E2);
//     return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(label, style: Theme.of(context).textTheme.bodyLarge),
//       const SizedBox(height: 12),
//       TextFormField(
//         controller:controller ,
//         onChanged: onChanged,
//         maxLines:maxLines ?? 1,
//         minLines: minLines ?? 1,
//         decoration: InputDecoration(
//           prefixIcon: Padding(
//             padding: const EdgeInsets.all(7.0),
//             child: prefixIcon,
//           ),
//           hintText: hint,
//           hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
//                 color: const Color(0xFFB9B9B9),
//               ),
//               fillColor:fillColor ?? Colors.white,
//           border: OutlineInputBorder(
//             borderSide: BorderSide(color: borderColor),
//             borderRadius: borderRadius,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: borderColor),
//             borderRadius: borderRadius,
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: borderColor),
//             borderRadius: borderRadius,
//           ),
//           errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: borderRadius,
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: borderRadius,
//           ),
//           contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
//         ),
//         style: const TextStyle(
//           color: Color(0xFF1A1B28),
//           fontWeight: FontWeight.w500,
//             fontFamily: "Plus Jakarta Sans",
//           fontSize: 16,
//         ),
//       ),
//     ],
//   );
//   }
// }