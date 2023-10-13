import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/Home & Action Menu/mentor.dart';

class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {
    final List<String> mentories = [
      'Back End',
      'Front End',
      'Mobile'
    ];
    List imageList = [
      {"id": 1, "image_path": 'assets/images/banner.png'},
      {"id": 2, "image_path": 'assets/images/bestsellersbanner.png'},
      {"id": 3, "image_path": 'assets/images/banner.png'}
    ];
    final CarouselController carouselController = CarouselController();
    int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Appointment", backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.picture_as_pdf), label: "Course", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.edit_document), label: "Articles", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile", backgroundColor: Colors.red),
        ]), body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: 140, width: double.infinity, color: Colors.black),
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
                                image: DecorationImage(image: NetworkImage(
                                  "https://i0.wp.com/studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg?ssl=1")),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2))), SizedBox(width: 10,), Text("Welcome 👋", style: GoogleFonts.urbanist(color: Colors.white, fontSize: 16),),
                          ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.heart_broken,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                      ],
                    ),
                  ),Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60, 
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(30)),
                          child: TextField(cursorHeight: 20, autofocus: false, decoration: InputDecoration(
                          hintText: "Cari Mentor Favoritmu", 
                          prefixIcon: Icon(Icons.search), 
                          border: OutlineInputBorder(
                            borderSide: 
                                BorderSide(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(30))),
                          ),
                          ),
                    ),
                    Column(children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: (){
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
                                ))
                          ),
                        ],
                      )
                    ],
                    ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        mentories.map((Mentor) => FilterChip(
                          label: Text(Mentor), 
                          onSelected: (selected){
                            
                          })),
                      ],
                    ),
                  )
                    ],
              )
            ],
          )
        ],
          ),);
  }
}