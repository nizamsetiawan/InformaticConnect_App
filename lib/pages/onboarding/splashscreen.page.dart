import 'package:flutter/material.dart';
import 'dart:async';
import 'package:informaticconnect_app/pages/onboarding/welcomescreen.page.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Delay selama 5 detik dan kemudian pindah ke FirstscreenPage
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const WelcomescreenPage(),
        ),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/image/logo.png',
              width: 300.0,
              height: 400.0,
            ),
            const SizedBox(height: 20.0),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
