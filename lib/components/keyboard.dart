import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb, {Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [
              ButtonRow(
                [
                  Button(text: 'AC', color: Button.lightGrayCollor, cb: cb),
                  Button(text: '+/-', color: Button.lightGrayCollor, cb: cb),
                  Button(text: '%', color: Button.lightGrayCollor, cb: cb),
                  Button.operation(text: '/', cb: cb),
                ],
              ),
              const SizedBox(height: 10,),
              ButtonRow(
                [
                  Button(text: '7', cb: cb),
                  Button(text: '8', cb: cb),
                  Button(text: '9', cb: cb),
                  Button.operation(text: 'x', cb: cb),
                ],
              ),
              const SizedBox(height: 10,),
              ButtonRow(
                [
                  Button(text: '4', cb: cb),
                  Button(text: '5', cb: cb),
                  Button(text: '6', cb: cb),
                  Button.operation(text: '-', cb: cb),
                ],
              ),
              const SizedBox(height: 10,),
              ButtonRow(
                [
                  Button(text: '1', cb: cb),
                  Button(text: '2', cb: cb),
                  Button(text: '3', cb: cb),
                  Button.operation(text: '+', cb: cb),
                ],
              ),
              const SizedBox(height: 10,),
              ButtonRow(
                [
                  Button.big(text: '0', cb: cb),
                  Button(text: '.', cb: cb),
                  Button.operation(text: '=', cb: cb),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
