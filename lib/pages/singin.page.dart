import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.route.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Center(
                child: Image.asset(
                  'assets/1.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang\nSilahkan Mendaftar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40),
            const Text(
              'Username',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: 'Sudah punya akun? '),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            color: Colors.orange,
                            decoration: TextDecoration.underline),
                      ),
                    ]),
                  ),
                  Text(
                    'Lupa password?',
                    style: TextStyle(
                        color: Colors.orange,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFF1A3665),
                  borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.main);
                },
                child: const Text(
                  'Daftar',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
