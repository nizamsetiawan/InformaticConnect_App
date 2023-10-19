import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/image/error_image.png'), // Ganti 'error_image.png' dengan path gambar Anda
        SizedBox(height: 16),
        Text('Tidak ada hasil yang ditemukan.'),
      ],
    );
  }
}

