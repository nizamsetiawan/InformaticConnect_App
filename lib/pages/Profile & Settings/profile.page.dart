// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/edit.page.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/help.page.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/terms.page.dart';

import '../../config/app.route.dart';
import '../../controllers/bottomnavbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        bottomNavigationBar: CustomBottomNavigation(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 24, left: 12),
            child: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          backgroundColor: const Color(0xff181A20),
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 48, 24, 48),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/photo1.JPG'),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder()),
                    ),
                    Positioned(
                      top: 105,
                      left: 105,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: SvgPicture.asset(
                            'assets/icons/edit.svg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  "Nizam Setiawan",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Front-End Web",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()));
                  },
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xff181A20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  5.83, 2.8, 6.2, 2.73),
                              width: 28,
                              height: 28,
                              child: SvgPicture.asset(
                                'assets/icons/profile.svg',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              child: const Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow-right.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TermsConditionsPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xff181A20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.fromLTRB(
                                  4.96, 3.21, 4.99, 2.79),
                              child: SvgPicture.asset(
                                'assets/icons/terms.svg',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow-right.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HelpCenterPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xff181A20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.all(3.21),
                              child: SvgPicture.asset(
                                'assets/icons/help.svg',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Help Center",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow-right.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            padding: const EdgeInsets.fromLTRB(
                                2.64, 3.21, 2.58, 3.21),
                            child: SvgPicture.asset(
                              'assets/icons/logout.svg',
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
