import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/config/app.route.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/image/login1.png',
                  height: 275, width: 275),
            ),
            const SizedBox(height: 20),
            const Text(
              "Let's you in",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 44, 44, 43),
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/login2.png',
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Continue with Google',
                      style: TextStyle(color: AppColor.white),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.signin);
                },
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(
              height: 50,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 1,
                      width: 150,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 44, 44, 43)))),
                  SizedBox(width: 15),
                  Text(
                    'or',
                    style: TextStyle(color: AppColor.white),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    height: 1,
                    width: 150,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 44, 43),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: AppColor.buttoncolor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 2, 192, 255)
                          .withOpacity(0.25),
                      blurRadius: 24,
                      offset: const Offset(4, 8),
                    )
                  ]),
              child: TextButton(
                child: const Text(
                  'Sign in with password',
                  style: TextStyle(
                      color: AppColor.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.signin);
                },
              ),
            ),
            const SizedBox(height: 40),
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
