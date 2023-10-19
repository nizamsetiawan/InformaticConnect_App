import 'package:flutter/material.dart';
import 'package:informaticconnect_app/main.dart';

import 'daftar_mentor.dart';

class FavoritPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Mentor> favoriteMentors = getFavoriteMentors();

    void toggleFavorite(Mentor mentor) {
      mentor.isFavorite = !mentor.isFavorite;
      if (mentor.isFavorite) {
        favoriteMentors.add(mentor); // Tambahkan mentor ke daftar favorit
      } else {
        favoriteMentors.remove(mentor); // Hapus mentor dari daftar favorit
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Mentor Favorit'),
      ),
      body: ListView.builder(
        itemCount: favoriteMentors.length,
        itemBuilder: (context, index) {
          return MentorCard(
            mentor: favoriteMentors[index],
            onFavoritePressed: () {
              toggleFavorite(favoriteMentors[index]);
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
