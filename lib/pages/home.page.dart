import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import '../config/app.route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(context),
            searchBar(),
            topMentorSection(),
            popularEventSection(),
            ourContentSection(context)
          ],
        ),
      ),
    );
  }

  Container ourContentSection(BuildContext context) {
    return Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Our Content',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(AppRoute.mentor);
                      },
                      icon: const Icon(Icons.arrow_right_alt),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        alignment: Alignment.center,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Color.fromARGB(255, 211, 211, 211),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                            ),
                          ]
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Judul Artikel',
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]
            ),
          );
  }

  Container popularEventSection() {
    return Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular Event',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(AppRoute.mentor);
                      },
                      icon: const Icon(Icons.arrow_right_alt),
                    ),
                  ],
                ),
                SizedBox(
                height: 150,
                child: ListView.separated(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  separatorBuilder: (context, index) => const SizedBox(width: 25,),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                          ),
                        ]
                      ),
                    );
                  },
                ),
              ),
              ]
            ),
          );
  }

  Container topMentorSection() {
    return Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Our Top Mentors',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(AppRoute.mentor);
                      },
                      icon: const Icon(Icons.arrow_right_alt),
                    ),
                  ],
                ),
                SizedBox(
                  height: 260,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(10),
                    separatorBuilder: (context, index) => const SizedBox(width: 25,),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                            ),
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              width: 120,
                              height: 120,
                              child: const Icon(
                                Icons.image,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama $index',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    maxLines: 1,
                                  ),
                                  const Text(
                                    'Pemrograman Mobile',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    maxLines: 2,
                                  ),
                                  RatingBarIndicator(
                                    rating: 4,
                                    itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Colors.purpleAccent,
                                    ),
                                    itemCount: 5,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                ),
                                ],
                              ),
                            )
                          ]
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
  }

  Container searchBar() {
    return Container(
              constraints: const BoxConstraints(),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: const TextField(
                // onChanged: (value) => ...(value),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: InputBorder.none,
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            );
  }

  Container appBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        //Arkan nanti diganti nama akun
                        'Hi, '+'Arkan'+'!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                      Text(
                        'Let`s Start Learning...',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.of(context).pushNamed(AppRoute.notificationscreen);
                          },
                          icon: const Icon(Icons.notifications),
                        ),
                      ),
                      //Ikon avatar
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pushNamed(AppRoute.profile);
                        },
                        child: const SizedBox(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black12,
                            child: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            // backgroundImage: AssetImage(''),
                            //aset foto 
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
    );
  }
}
