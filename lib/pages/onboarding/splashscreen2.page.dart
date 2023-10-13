import 'package:flutter/material.dart';
import 'splashscreen3.page.dart';

class Splashscreen2Page extends StatelessWidget {
  const Splashscreen2Page({Key? key});

  void _navigateToNextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const Splashscreen3Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/bgsplashscreen.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center, // Pusatkan elemen di tengah
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 400.0), // Jarak di atas Column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'learning &\n consultations easily\n anywhere anytime',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => _navigateToNextPage(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 120.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
