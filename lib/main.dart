import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_app/Screen/homescreen.dart';
// ignore: unused_import
import 'package:food_app/auth/sing_in.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingIn(),
    );
  }
}
