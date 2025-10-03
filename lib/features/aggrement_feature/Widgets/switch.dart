import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Switchbar extends ConsumerStatefulWidget {
  final Color? color;
  final  void Function(bool)? onChanged;
  final bool value;
  const Switchbar({super.key,this.color,this.onChanged,this.value=false});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SwitchbarState();
}

class _SwitchbarState extends ConsumerState<Switchbar> {

  @override
  Widget build(BuildContext context) {
    return   Container(
          width: 51.0,
          height: 31.0,
          decoration: BoxDecoration(
            color:widget.color,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: CupertinoSwitch(
            value: widget.value,
            activeTrackColor: const Color(0xFF91D35F),
            onChanged:widget.onChanged
          ),
        );
  }
}