import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

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

  MentorCard({required this.mentor, onFavoritePressed})
      : onFavoritePressed = onFavoritePressed;

  final Function? onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.bgwidget,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              width: 100,
              height: 100,
              child: ClipOval(
                child: Image.asset(
                  mentor.photo,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        mentor.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffe0e0e0),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          mentor.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
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
                  Text(
                    mentor.category,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text(
                        mentor.rating.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffe0e0e0),
                        ),
                      ),
                      Text(
                        ' (${mentor.reviews} reviews)',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffe0e0e0),
                        ),
                      ),
                    ],
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

final dummyMentors = [
  Mentor(
    id: 'm1',
    name: 'Nizam ',
    photo: 'assets/image/logo.png',
    category: 'Front-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'IRsyad',
    photo: 'assets/image/photo1.jpg',
    category: 'Mobile-Dev', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'Ali ',
    photo: 'assets/image/profile.jpg',
    category: 'Back-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'Zildan',
    photo: 'assets/image/profile.jpg',
    category: 'Back-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'Arkan ',
    photo: 'assets/image/profile.jpg',
    category: 'Back-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  Mentor(
    id: 'm1',
    name: 'Daffa',
    photo: 'assets/image/profile.jpg',
    category: 'Back-End Web', // Tambahkan kategori
    rating: 4.8,
    reviews: 3279,
    isFavorite: false,
  ),
  // Tambahkan mentor lainnya dengan kategori yang sesuai
];
