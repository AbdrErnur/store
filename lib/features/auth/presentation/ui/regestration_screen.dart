import 'package:flutter/material.dart';
import 'package:store/presentation/ui/components/form_field.dart';
import 'package:store/presentation/ui/components/primary_button.dart';
import 'package:store/presentation/ui/screens/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            'Регистрация',
            style: TextStyle(
              color: Color(0xFFFE00AE),
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          )),
          const SizedBox(
            height: 24.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Ваше имя',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFF202020)),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const BrFormFiled(),
          const SizedBox(
            height: 9.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Телефон',
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
              text: 'Регистрация',
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              }),
          const SizedBox(height: 24.0,),
          TextButton(onPressed: (){}, child: const Text('Войти', style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),)),
        ],
      ),
    );
  }
}
