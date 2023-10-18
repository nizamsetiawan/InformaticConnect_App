import 'package:flutter/material.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/fitur_a.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/fitur_b.dart';

void main() {
  runApp(mainFiturPage());
}

class mainFiturPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Utama'),
        ),
        body: Column(
          children: <Widget>[
            fiturAPage(), // Gunakan widget dari Fitur A
            fiturBPage(), // Gunakan widget dari Fitur B
          ],
        ),
      ),
    );
  }
}
