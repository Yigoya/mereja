import 'package:flutter/material.dart';

Widget button(String text, void Function()? onTap, double size) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: size, vertical: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          border: Border.all(color: Colors.blue, width: 4)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget icon_button(IconData icon, void Function()? onTap, double size) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.blue, width: 4)),
      child: Icon(
        icon,
        color: Colors.blue,
        size: 50,
      ),
    ),
  );
}
