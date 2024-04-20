import 'package:chat_app/auth/log_or_reg.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter White Chat App',
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const LoginOrRegister(),
    );
  }
}
