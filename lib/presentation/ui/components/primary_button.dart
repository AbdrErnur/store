import 'package:flutter/material.dart';

class BrPrimaryButton extends StatelessWidget {
  const BrPrimaryButton(
      {super.key, required this.text, required this.onPressed, this.padding});

  final String text;
  final void Function() onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xffFE00AE)), // Цвет фона
            foregroundColor: MaterialStateProperty.all<Color>(
                const Color(0xffFFFFFF)), // Цвет текста
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Задание радиуса
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size(328, 50))),
        child: Text(text),
      ),
    );
  }
}
