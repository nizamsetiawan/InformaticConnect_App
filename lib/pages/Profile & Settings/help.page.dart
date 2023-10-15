import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 24, left: 12),
            child: Text(
              'Help Center',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          backgroundColor: const Color(0xff181A20),
          elevation: 0.0,
        ),
      ),
    );
  }
}
