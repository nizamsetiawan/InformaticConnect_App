import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/config/app.route.dart';
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
  String selectedCategory = ''; // Kategori yang dipilih

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

  void filterMentorsByCategory(String category) {
    setState(() {
      if (category == selectedCategory) {
        // Kategori yang sama ditekan kembali, hilangkan filter
        selectedCategory = '';
        mentors = dummyMentors;
      } else {
        // Kategori berbeda yang ditekan, terapkan filter
        selectedCategory = category;
        mentors = dummyMentors.where((mentor) => mentor.category == category).toList();
      }
    });
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
        title: Text('Category Mentors'),
        automaticallyImplyLeading: false, // Menghilangkan tombol kembali (back button)
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.favorite),
          //   onPressed: navigateToFavoritesPage,
          // ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.bgwidget,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        controller: searchController,
                        cursorHeight: 20,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: "Cari Mentor Favoritmu",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                            onChanged: (query) {
                                 searchMentors(query);
                            // Setelah perubahan hasil pencarian, cek apakah daftar mentors kosong
                            if (mentors.isEmpty) {
                            Navigator.push(
                              context,
                                MaterialPageRoute(
                                  builder: (context) => ErrorPage(), // Ganti dengan rute yang sesuai
            ),
          );
        }
      },
                      ),
                    ),
                  ),
          Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      FilterButton(
        category: 'Back-End Web',
        isSelected: selectedCategory == 'Back-End Web',
        onPressed: () {
          filterMentorsByCategory('Back-End Web');
        },
      ),
      FilterButton(
        category: 'Front-End Web',
        isSelected: selectedCategory == 'Front-End Web',
        onPressed: () {
          filterMentorsByCategory('Front-End Web');
        },
      ),
      FilterButton(
        category: 'Mobile-Dev',
        isSelected: selectedCategory == 'Mobile-Dev',
        onPressed: () {
          filterMentorsByCategory('Mobile-Dev');
        },
      ),
    ],
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
                                            color: mentor.isFavorite ? Colors.red : Colors.grey,
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

class FilterButton extends StatelessWidget {
  final String category;
  final bool isSelected;
  final Function onPressed;

  FilterButton({
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.blue : Colors.grey, // Warna latar belakang
      ),
      child: Text(
        category,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
