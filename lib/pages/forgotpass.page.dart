import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

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
              'Forget Password',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const Text(
              'Remember & input your email\nor phone number below',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              child: Icon(
                Icons.lock,
                size: 40,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: 'E-mail Address/Phone Number',
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
                  Navigator.of(context).pushNamed('/forgotpassword2');
                },
                child: const Text(
                  'Send Code',
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
