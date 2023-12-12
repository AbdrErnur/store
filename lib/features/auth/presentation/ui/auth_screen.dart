import 'package:flutter/material.dart';
import 'package:store/features/auth/presentation/ui/regestration_screen.dart';
import 'package:store/presentation/ui/components/primary_button.dart';
import 'package:store/features/auth/presentation/ui/phone_input_screen.dart';
import 'package:store/presentation/ui/components/secondary_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthState();
}

class _AuthState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/image/logo.png'),
          const SizedBox(height: 124.0),
          BrPrimaryButton(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            text: 'Войти',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PhoneInputScreen()));
            },
          ),
          const SizedBox(height: 24.0),
          SecondaryButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));
          },
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              text: 'Регистрация'),
          const Spacer(),
          TextButton(onPressed: (){}, child: const Text('О нас', style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),)),
          const SizedBox(height: 24.0,),
        ],
      ),
    );
  }
}
