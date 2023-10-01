import 'package:flutter/material.dart';
import 'package:mereja/auth/login.dart';
import 'package:mereja/auth/register.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isLoginPage = true;
  void toggle() {
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginPage) {
      return LoginPage();
    } else {
      return RegisterPage();
    }
  }
}
