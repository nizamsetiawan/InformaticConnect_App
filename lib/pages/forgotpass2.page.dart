import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class ForgotPass2Page extends StatelessWidget {
  const ForgotPass2Page({super.key});

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
              'Enter Your Passcode',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const Text(
              'We have send the code to your device',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Passcode',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black))),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Code expires in ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: '02.00',
                    style: TextStyle(color: AppColor.tertiarycolor))
              ])),
            ),
            const SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Did not receive code? ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'Resend Code',
                    style: TextStyle(color: AppColor.tertiarycolor))
              ])),
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
                  Navigator.of(context).pushNamed('/forgotpassword3');
                },
                child: const Text(
                  'Verify Password',
                  style: TextStyle(color: AppColor.secondcolor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
