import 'package:flutter/material.dart';

class CustomRefreshIndicator extends StatelessWidget {
  const CustomRefreshIndicator(
      {super.key, required this.onRefresh, required this.child});
  final Future<void> Function() onRefresh;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: const Color(0xFF164C63),
      onRefresh: onRefresh,
      child: child,
    );
  }
}
