import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.route.dart';
import 'package:informaticconnect_app/main.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/error_page.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor_favorit.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/search_screen.dart';
import 'daftar_mentor.dart';

class MentorListPage extends StatefulWidget {
  @override
  _MentorListPageState createState() => _MentorListPageState();
}

class _MentorListPageState extends State<MentorListPage> {
  List<Mentor> mentors = List.from(dummyMentors);
  List<Mentor> favoriteMentors = getFavoriteMentors();


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
        leading: IconButton(
    icon: Icon(Icons.arrow_back), // Ikon "back"
    onPressed: () {
      Navigator.of(context).pushNamed(AppRoute.homepage); // Arahkan kembali ke HomePage
    },
  ),
        title: Text('Mentors'),
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
    Expanded(
      child: mentors.isEmpty
        ? ErrorPage() // Tampilkan halaman kesalahan jika tidak ada hasil pencarian
        : ListView.builder(
          itemCount: mentors.length,
          itemBuilder: (context, index) {
            Mentor mentor = mentors[index];
                return Card(
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
                          child: Image.network(
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
          Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  height: 50,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Category',
        style: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Color(0xffffffff),
        ),
      ),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CobaPage(), // Ganti dengan rute yang sesuai
            ),
          );
        },
        child: Text(
          'See All',
          style: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
            color: Color(0xffff731d),
          ),
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
