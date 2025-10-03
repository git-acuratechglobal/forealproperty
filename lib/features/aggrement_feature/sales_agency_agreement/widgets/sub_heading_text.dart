import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubHeadingText extends HookConsumerWidget {
  const SubHeadingText({super.key, required this.text,});
final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.grey.shade700, fontSize: 13.sp));
  }
}
