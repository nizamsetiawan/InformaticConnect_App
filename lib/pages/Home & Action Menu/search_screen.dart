import 'package:flutter/material.dart';
import 'package:informaticconnect_app/main.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/error_page.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor_favorit.dart';
// import 'package:informaticconnect_app/main.dart';
// import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor_favorit.dart';
// import 'package:testmobile/main.dart';
// import 'package:testmobile/mentor_favorit.dart';
import 'daftar_mentor.dart';

class CobaPage extends StatefulWidget {
  @override
  _CobaPageState createState() => _CobaPageState();
}

class _CobaPageState extends State<CobaPage> {
  List<Mentor> mentors = List.from(dummyMentors);
  List<Mentor> favoriteMentors = getFavoriteMentors();

  TextEditingController searchController = TextEditingController();

  void searchMentors(String query) {
    setState(() {
      mentors = dummyMentors
          .where((mentor) =>
              mentor.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void toggleFavorite(Mentor mentor) {
    setState(() {
      if (mentor.isFavorite) {
        favoriteMentors.remove(mentor);
      } else {
        favoriteMentors.add(mentor);
      }
      mentor.isFavorite = !mentor.isFavorite;
    });
  }

  void updateFavorites(List<Mentor> newFavorites) {
    setState(() {
      favoriteMentors = newFavorites;
    });
  }

  void navigateToFavoritesPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MentorFavoritPage(
          favoriteMentors: favoriteMentors,
          updateFavorites: updateFavorites,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mentor'),
          automaticallyImplyLeading: false, // Menghilangkan tombol kembali (back button)

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: navigateToFavoritesPage,
          ),
        ],
      ),
      body: Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Cari Mentor...',
        ),
        onChanged: (query) {
          searchMentors(query);
        },
      ),
    ),
    Expanded(
      child: mentors.isEmpty
        ? ErrorPage() // Tampilkan halaman kesalahan jika tidak ada hasil pencarian
        : ListView.builder(
          itemCount: mentors.length,
          itemBuilder: (context, index) {
            Mentor mentor = mentors[index];
                return Card(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
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
                          width: 110,
                          height: 110,
                          child: Image.network(
                            mentor.photo,
                            width: 110,
                            height: 110,
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
                                      fontFamily: 'Urbanist',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffe0e0e0),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.favorite,
                                      color: mentor.isFavorite
                                          ? Colors.red
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      toggleFavorite(mentor);
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                mentor.category,
                                style: TextStyle(
                                  fontFamily: 'Urbanist',
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
                                      fontFamily: 'Urbanist',
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
