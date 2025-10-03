import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageLoadingWidget extends HookConsumerWidget {
  const PageLoadingWidget({
    super.key,
    required this.child,
    this.isLoading = false,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        child,
        if (isLoading) ...[
          const ModalBarrier(
            dismissible: false,
            color: Colors.black38,
          ),
          const Center(
            child: CircularProgressIndicator(
              color: const Color(0xFF164C63),
            ),
          ),
        ],
      ],
    );
  }
}
