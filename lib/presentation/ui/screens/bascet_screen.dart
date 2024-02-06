import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BascetScreen extends StatefulWidget {
  const BascetScreen({super.key});

  @override
  State<BascetScreen> createState() => _BascetScreenState();
}

class _BascetScreenState extends State<BascetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Корзина',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFE00AE),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              child: Text('Оформить заказа'),
              onPressed: (){},
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(364, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xffFE00AE), // Цвет фона
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xffFFFFFF), // Цвет текста
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Задание радиуса
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
