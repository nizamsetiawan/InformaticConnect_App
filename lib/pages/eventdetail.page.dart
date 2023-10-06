import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.grey,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(16.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Container(
            color: Colors.grey,
            height: 200.0,
            child: Center(
              child: Image.network(
                'URL_GAMBAR_EVENT',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Judul Event',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey, // Warna teks abu-abu
                  ),
                ),
                Text(
                  'Nama Pemateri',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks abu-abu
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks abu-abu
                  ),
                ),
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk tombol register di sini
                    },
                    child: Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
