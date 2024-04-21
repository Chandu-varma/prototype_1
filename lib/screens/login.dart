import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prototype_1/fire_base/fire_base_login.dart';
import 'package:prototype_1/reuse_components/custom_text.dart';
import 'package:prototype_1/screens/home_pge.dart';
import 'package:prototype_1/screens/signin_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  bool login = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            'Login',
            style: TextStyle(
              color: Color.fromARGB(255, 244, 245, 245),
            ),
          )),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await FireBase()
                    .login(_emailController.text, _passwordController.text);
                if (FirebaseAuth.instance.currentUser != null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePge(),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(
                  255,
                  150,
                  149,
                  149,
                ),
              ),
              child: const Text(
                'login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                  text: 'don\'t have an account?',
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextWidget(
                  text: 'signin',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                  },
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
