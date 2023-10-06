import 'package:flutter/material.dart';

import 'package:informaticconnect_app/config/app.color.dart';

import 'package:informaticconnect_app/config/app.route.dart';


class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.secondcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            const SizedBox(height: 20),
            const Text(
              'Log In',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: 'E-mail Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black))),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black))),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                  color: AppColor.tertiarycolor,
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text(
                  'CONTINUE',
                  style: TextStyle(color: AppColor.secondcolor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Do not have any account? ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                  text: 'Sign Up here',
                  style: TextStyle(color: AppColor.tertiarycolor),
                ),
              ])),
            ),
            SizedBox(
              child: TextButton(
                onPressed: () {

                  Navigator.of(context).pushNamed('/forgotpassword');

                  Navigator.of(context).pushNamed(AppRoute.main);

                },
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(color: AppColor.tertiarycolor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
