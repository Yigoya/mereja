import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTop;
  const LoginPage({super.key, required this.onTop});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement login functionality
                  },
                  child: Text('Login'),
                ),
                SizedBox(width: 16.0),
                OutlinedButton(
                  onPressed: () {
                    // TODO: Implement sign up functionality
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Sponsored by'),
          ],
        ),
      ),
    );
  }
}
