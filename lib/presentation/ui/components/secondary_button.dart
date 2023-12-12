import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key, this.padding, required this.onPressed, required this.text});

  final String text;
  final EdgeInsets? padding;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xffFFFFE5)), // Цвет фона
            foregroundColor: MaterialStateProperty.all<Color>(
                const Color(0xffFE00AE)), // Цвет текста
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Задание радиуса
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size(328, 50)),
        ),
        child: Text(text),
      ),
    );
  }
}
