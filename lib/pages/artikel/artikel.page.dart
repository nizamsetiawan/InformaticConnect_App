import 'package:flutter/material.dart';
import '../../config/app.route.dart';
import '../../controllers/bottomnavbar.dart';
import '../../models/artikelcontainer.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  int currentIndex = 0;
  int _selectedIndex = 3;

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
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 24, left: 12),
          child: Text(
            'Articles',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: const Color(0xff181A20),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: false,
      ),
      body: ListView(
        children: [
          ArtikelContainer(
            imagepath: "assets/image/Mask Group.png",
            title: "Teknik Informatika \nlulusan jadi apa?",
            date: "December 20 20",
            path: "Web/Mobile",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
          ArtikelContainer(
            imagepath: "assets/image/courses3.png",
            title: "Mengapa Cyber\nPenting di Era Digital",
            date: "May 09 12",
            path: "Cyber",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
          ArtikelContainer(
            imagepath: "assets/image/courses2.png",
            title: "Jaringan 5G dan\n Dampaknya",
            date: "January 2 7",
            path: "Jaringan",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
          ArtikelContainer(
            imagepath: "assets/image/courses4.png",
            title: "Data sebagai \nAset Bisnis",
            date: "May 2 2",
            path: "Data",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
        ],
      ),
    );
  }
}
