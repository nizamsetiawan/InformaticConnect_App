import 'package:flutter/material.dart';

class DaftarMentorPage extends StatelessWidget {
  final List<Mentor> mentors = List.from(dummyMentors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mentor'),
      ),
      body: ListView.builder(
        itemCount: mentors.length,
        itemBuilder: (context, index) {
          return MentorCard(mentor: mentors[index]);
        },
      ),
    );
  }
}

class Mentor {
  final String id;
  final String name;
  final String photo;
  final String category; // Tambahkan properti category
  final double rating;
  final int reviews;
  bool isFavorite;

  Mentor({
    required this.id,
    required this.name,
    required this.photo,
    required this.category, // Tambahkan category ke konstruktor
    required this.rating,
    required this.reviews,
    this.isFavorite = false,
  });
}


class MentorCard extends StatelessWidget {
  final Mentor mentor;

  MentorCard({required this.mentor, onFavoritePressed}) : onFavoritePressed = onFavoritePressed;

  final Function? onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.asset(mentor.photo),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(mentor.name, style: TextStyle(fontSize: 20)),
                Text('Rating: ${mentor.rating.toStringAsFixed(1)}'),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              mentor.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: mentor.isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              if (onFavoritePressed != null) {
                onFavoritePressed!();
              }
            },
          ),
        ],
      ),
    );
  }
}

final dummyMentors = [
  Mentor(
    id: 'm1',
    name: 'Nizam Setiawan',
    photo: 'https://example.com/nizam.jpg',
    category: 'Front-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'IRsyad Setiawan',
    photo: 'https://example.com/nizam.jpg',
    category: 'Mobile-DEv Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'Ali Setiawan',
    photo: 'https://example.com/nizam.jpg',
    category: 'Back-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  // Tambahkan mentor lainnya dengan kategori yang sesuai
];
