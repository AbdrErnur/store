import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/presentation/ui/components/form_field.dart';
import 'package:store/presentation/ui/components/primary_button.dart';
import 'package:store/features/auth/presentation/ui/regestration_screen.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 24.0,
          ),
          const Center(
              child: Text(
            'Авторизация',
            style: TextStyle(
              color: Color(0xFFFE00AE),
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          )),
          const SizedBox(
            height: 84.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Введите телефон',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFF202020)),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const BrFormFiled(),
          const SizedBox(
            height: 24.0,
          ),
          BrPrimaryButton(
            text: 'Войти',
            onPressed: () {},
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));
              },
              child: const Text(
                'Регестрация',
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              )),
        ],
      ),
    );
  }
}
