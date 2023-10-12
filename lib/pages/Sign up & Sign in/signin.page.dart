import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/config/app.route.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgscaffolod,
        leading: const BackButton(
          color: AppColor.white,
        ),
      ),
      body: Container(
        color: AppColor.bgscaffolod,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/logo2.png', height: 275, width: 275),
            ),
            const SizedBox(height: 20),
            const Text(
              'Login to Your Account',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextFormField(
                style: const TextStyle(color: AppColor.white),
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 49, 49, 49),
                  filled: true,
                  labelText: 'Email',
                  labelStyle: TextStyle(color: AppColor.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextFormField(
                style: const TextStyle(color: AppColor.white),
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 49, 49, 49),
                  filled: true,
                  labelText: 'Password',
                  labelStyle: TextStyle(color: AppColor.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: AppColor.buttoncolor,
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.login);
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: AppColor.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.login);
                },
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(color: AppColor.buttoncolor),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 350,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 1,
                      width: 100,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 44, 44, 43)))),
                  SizedBox(width: 15),
                  Text(
                    'or continue with',
                    style: TextStyle(color: AppColor.white),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    height: 1,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 44, 43),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 44, 44, 43),
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/login2.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.signin);
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.signup);
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: AppColor.buttoncolor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
