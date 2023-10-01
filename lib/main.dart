import 'package:flutter/material.dart';
import 'package:mereja/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mereja",
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
