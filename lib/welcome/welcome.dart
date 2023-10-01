import 'package:flutter/material.dart';
import 'package:mereja/components/button.dart';
import 'package:mereja/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  void gotologin() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/phone2.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, bottom: 30),
              child: Text(
                "wwe have every info",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: (Colors.red)),
              ),
            ),
            Text(
              "the new app to give you any information",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: (Colors.red)),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                button("English", () {}, 30),
                button("Amharic", () {}, 30)
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                button("Get started", () {}, 13),
                icon_button(Icons.arrow_circle_right_sharp, gotologin, 13)
              ],
            )
          ],
        ),
      ),
    );
  }
}
