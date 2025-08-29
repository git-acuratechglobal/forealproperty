import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HeadingText extends HookConsumerWidget {
  const HeadingText({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: const Color(0xFF1e9283),
            fontWeight: FontWeight.w800)
    );
  }
}
