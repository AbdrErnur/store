import 'package:flutter/material.dart';
import 'package:store/features/auth/presentation/ui/auth_screen.dart';
import 'package:store/presentation/ui/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black
            )
      )),
      home: const HomeScreen(),
    ),
  );
}
