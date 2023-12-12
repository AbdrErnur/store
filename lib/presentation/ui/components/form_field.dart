import 'package:flutter/material.dart';

class BrFormFiled extends StatefulWidget {
  const BrFormFiled({super.key});

  @override
  State<BrFormFiled> createState() => _BrFormFiledState();
}

class _BrFormFiledState extends State<BrFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
