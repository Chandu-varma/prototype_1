import 'package:flutter/material.dart';
import 'package:prototype_1/fire_base/fire_base_login.dart';
import 'package:prototype_1/reuse_components/custom_text.dart';
import 'package:prototype_1/screens/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: Color.fromARGB(255, 244, 245, 245),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              style: const TextStyle(color: Colors.amber),
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.amber),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              style: const TextStyle(color: Colors.amber),
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.amber),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _confirmPasswordController,
              style: const TextStyle(color: Colors.amber),
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(color: Colors.amber),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _validateAndSubmit();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 150, 149, 149),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
            if (_errorMessage.isNotEmpty) ...[
              const SizedBox(height: 10),
              CustomTextWidget(
                text: _errorMessage,
                color: Colors.red,
              ),
            ],
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                  text: 'Already have an account?',
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                CustomTextWidget(
                  text: 'Log In',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _validateAndSubmit() async {
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();
    final String confirmPassword = _confirmPasswordController.text.trim();
    if (!email.endsWith("@gmail.com")) {
      setState(() {
        _errorMessage = 'check the mail once';
      });
      return;
    }
    if (password != confirmPassword) {
      setState(() {
        _errorMessage = 'Passwords do not match!';
      });
    } else {
      await FireBase().register(
        _emailController.text,
        _passwordController.text,
      );
    }
  }
}
