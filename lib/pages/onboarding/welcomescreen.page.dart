import 'package:flutter/material.dart';
import 'package:informaticconnect_app/pages/onboarding/splashscreen1.page.dart';

class WelcomescreenPage extends StatelessWidget {
  const WelcomescreenPage({super.key});

  void _navigateToNextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const Splashscreen1Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/welcomescreen.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Welcome to IC!',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  'The best online mentor appointment &\n'
                  'consultation app of the century for your\n'
                  'technology and medical needs!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
            ],
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: () => _navigateToNextPage(
                  context), // Panggil fungsi _navigateToNextPage
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
