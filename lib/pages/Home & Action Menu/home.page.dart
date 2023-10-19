import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/main.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/daftar_mentor.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/error_page.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/favorit_page.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor_favorit.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor_list.dart';
import '../../config/app.route.dart';
import '../../controllers/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  void updateFavorites(List<Mentor> newFavorites) {
    setState(() {
      favoriteMentors = newFavorites;
    });
  }
  final List<String> categories = [
    'Back End',
    'Front End',
    'Mobile',
  ];
  List<String> selectedCategories = [

  ];
  List imageList = [
    {"id": 1, "image_path": 'assets/image/cardcoresoul.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Handle navigation based on the index (your existing code)
    if (index == 0) {
      Navigator.of(context).pushNamed(AppRoute.homepage);
    } else if (index == 1) {
      Navigator.of(context).pushNamed(AppRoute.appointment);
    } else if (index == 2) {
      Navigator.of(context).pushNamed(AppRoute.courses);
    } else if (index == 3) {
      Navigator.of(context).pushNamed(AppRoute.artikel);
    } else if (index == 4) {
      Navigator.of(context).pushNamed(AppRoute.profile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(mentors[0].photo)),
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Welcome 👋\n Nizam Setiawan",
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
  alignment: Alignment.topRight,
  child: IconButton(
            icon: Icon(
      Icons.favorite,
      color: Colors.red,
      size: 30,
    ),
            onPressed: navigateToFavoritesPage,
          ),
),

                      ],
                    ),
                  ),
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

                  
                  Column(
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              print(currentIndex);
                            },
                            child: CarouselSlider(
                              items: imageList
                                  .map(
                                    (item) => Image.asset(
                                      item['image_path'],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  )
                                  .toList(),
                              carouselController: carouselController,
                              options: CarouselOptions(
                                scrollPhysics: const BouncingScrollPhysics(),
                                autoPlay: true,
                                aspectRatio: 2,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  height: 50,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Mentors',
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
              builder: (context) => MentorListPage(), // Ganti dengan rute yang sesuai
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

Card(
  margin: EdgeInsets.all(15),
  elevation: 5,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(mentors[0].photo),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mentors.isNotEmpty ? mentors[0].name : 'Mentor Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Ubah warna teks nama
              ),
            ),
            Text(
              mentors.isNotEmpty ? mentors[0].category : 'Mentor Category',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black, // Ubah warna teks kategori
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Text(
                      ' ${mentors.isNotEmpty ? mentors[0].rating.toString() : '0.0'}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container( // Tambah container untuk mengatur ikon favorit
                  margin: const EdgeInsets.only(right: 10),// Sesuaikan jarak kanan ikon
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30, // Sesuaikan ukuran ikon
                    ),
                    onPressed: () {
                      // Tambahkan logika ketika favorit ditekan di sini
                    },
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




                
            ],
          ),
        ],
      ),
        ],
      ),
    );
  }
}
