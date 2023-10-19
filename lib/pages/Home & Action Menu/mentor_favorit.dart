import 'package:flutter/material.dart';
import 'daftar_mentor.dart';

class MentorFavoritPage extends StatefulWidget {
  final List<Mentor> favoriteMentors;
  final Function(List<Mentor>) updateFavorites;

  MentorFavoritPage({required this.favoriteMentors, required this.updateFavorites});

  @override
  _MentorFavoritPageState createState() => _MentorFavoritPageState();
}

class _MentorFavoritPageState extends State<MentorFavoritPage> {
  void toggleFavorite(Mentor mentor) {
    mentor.isFavorite = !mentor.isFavorite;
    if (!mentor.isFavorite) {
      // Hapus mentor dari daftar favorit dan kembalikan ke daftar utama
      widget.favoriteMentors.remove(mentor);
    }
    widget.updateFavorites(widget.favoriteMentors); // Memanggil callback untuk mengirim status "favorit" ke halaman utama
    setState(() {}); // Memicu pembaruan UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentor Favorit'),
      ),
      body: ListView.builder(
        itemCount: widget.favoriteMentors.length,
        itemBuilder: (context, index) {
          return MentorCard(
            mentor: widget.favoriteMentors[index],
            onFavoritePressed: () {
              toggleFavorite(widget.favoriteMentors[index]);
            },
          );
        },
      ),
    );
  }
}
