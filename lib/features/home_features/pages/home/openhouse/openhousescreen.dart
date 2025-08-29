import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Openhousescreen extends ConsumerStatefulWidget {
  const Openhousescreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OpenhousescreenState();
}
class _OpenhousescreenState extends ConsumerState<Openhousescreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
   backgroundColor: Color(0xFFEBF3F5),
      body: Column(),
    );
  }
}