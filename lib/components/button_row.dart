import 'package:calculadora/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow(this.buttons, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold([], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll([const SizedBox(width: 10), b]);
          return list;
        }),
      ),
    );
  }
}
