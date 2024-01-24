import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const defaultColor = Color.fromRGBO(45, 45, 45, 1);
  static const lightGrayCollor = Color.fromRGBO(140, 140, 140, 1);
  static const operationColor = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    Key? key,
    required this.text,
    this.big = false,
    this.color = defaultColor,
    required this.cb,
  }) : super(key: key);

  const Button.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = defaultColor,
    required this.cb,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.big = false,
    this.color = operationColor,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = (text == 'AC' || text == '%' || text == '+/-')
        ? const Color.fromARGB(255, 0, 0, 0)
        : Colors.white;

    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: text == '0'
            ? Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
        onPressed: () => cb(text),
      ),
    );
  }
}
