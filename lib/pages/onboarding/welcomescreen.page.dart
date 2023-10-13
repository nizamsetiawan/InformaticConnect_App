import 'package:flutter/material.dart';
import 'package:informaticconnect_app/pages/onboarding/splashscreen1.page.dart';
// import 'package:informaticconnect_app/pages/onboarding/splashscreen1.page.dart';

class WelcomescreenPage extends StatelessWidget {
  const WelcomescreenPage({Key? key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Splashscreen1Page(),
        ),
      );
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/welcomescreen.png',
            fit: BoxFit.cover,
            // Menyesuaikan gambar dengan layar
          ),
          const SizedBox(height: 100),
          const Text(
            'Welcome to IC!',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'The best online mentor appointment &\n'
            'consultation app of the century for your\n'
            'technology and medical needs!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
