import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SlideableWidget extends HookConsumerWidget {
  const SlideableWidget(
      {super.key,
      required this.child,
      required this.widgetKey,
      this.onPressed});
  final Widget child;
  final Key widgetKey;
  final void Function(BuildContext)? onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickerProvider = useSingleTickerProvider();

    final controller = useMemoized(
      () => SlidableController(tickerProvider),
      [tickerProvider],
    );
    return Slidable(
      controller: controller,
      key: widgetKey,
      endActionPane: ActionPane(
        dragDismissible: false,
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: onPressed,
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: child,
    );
  }
}
