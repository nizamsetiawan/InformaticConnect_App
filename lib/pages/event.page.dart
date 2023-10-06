import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "On Going Event",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
                height:
                    20.0), // Jarak antara teks "On Going Event" dan konten di bawahnya

            // Konten untuk "On Going Event"
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Event
                  Container(
                    width: 100.0,
                    height: 180.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                        "assets/event_image.png"), // Ganti dengan path gambar yang sesuai
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    width: 200.0,
                    height: 180.0,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Judul Event",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Nama Pemateri",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Tanggal Event",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Harga",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        // Tombol panah ke arah kanan
                        Positioned(
                          right: 8.0, // Jarak dari tepi kanan
                          bottom: 0.0, // Jarak dari tepi bawah
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              // Tambahkan logika yang sesuai di sini
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Teks "Upcoming Event"
            Text(
              "Upcoming Event",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
                height:
                    20.0), // Jarak antara teks "Upcoming Event" dan konten di bawahnya

            // Konten untuk "Upcoming Event"
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Event
                  Container(
                    width: 100.0,
                    height: 180.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                        "assets/event_image.png"), // Ganti dengan path gambar yang sesuai
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    width: 200.0,
                    height: 180.0,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Judul Event",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Nama Pemateri",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Tanggal Event",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Harga",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        // Tombol panah ke arah kanan
                        Positioned(
                          right: 8.0, // Jarak dari tepi kanan
                          bottom: 8.0, // Jarak dari tepi bawah
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              // Tambahkan logika yang sesuai di sini
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
