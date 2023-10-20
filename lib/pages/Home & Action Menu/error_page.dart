import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.route.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon "back"
          onPressed: () {
            Navigator.of(context)
                .pushNamed(AppRoute.homepage); // Arahkan kembali ke HomePage
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                'assets/image/error_image.png'), // Ganti 'error_image.png' dengan path gambar Anda
            SizedBox(height: 16),
            Text('Tidak ada hasil yang ditemukan.'),
          ],
        ),
      ),
    );
  }
}
