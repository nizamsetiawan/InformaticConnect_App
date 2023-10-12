import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.route.dart';
import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/login.page.dart';
import 'package:informaticconnect_app/pages/onboarding/splashscreen1.page.dart';

class Splashscreen3Page extends StatelessWidget {
  const Splashscreen3Page({super.key});

  void _navigateToNextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bgsplashscreen.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Let's start living\ntechnology and well\nwith us right now!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.login);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Warna latar belakang tombol
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0, // Tinggi tombol
                    horizontal: 180.0, // Lebar tombol
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Bentuk tombol
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 18.0, // Ukuran teks tombol
                    color: Colors.white, // Warna teks tombol
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
