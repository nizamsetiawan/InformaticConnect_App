import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff181A20),
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(top: 24, left: 12),
            child: Text(
              'Terms and Conditions',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          backgroundColor: Color(0xff181A20),
          elevation: 0.0,
        ),
      ),
    );
  }
}
