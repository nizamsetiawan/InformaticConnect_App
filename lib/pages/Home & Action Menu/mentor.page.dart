import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import '../../config/app.route.dart';
import '../../controllers/bottomnavbar.dart';
import '../../models/mentorlist.dart';

class MentorListPage extends StatefulWidget {
  const MentorListPage({super.key});

  @override
  State<MentorListPage> createState() => _MentorListPageState();
}

class _MentorListPageState extends State<MentorListPage> {
  int _selectedIndex = 2;

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
      backgroundColor: AppColor.bgscaffolod,
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        title: const Text("Courses"),
        backgroundColor: AppColor.bgscaffolod,
      ),
      body: ListView(
        children: [
          MentorList(
            imagepath: "assets/image/Mask Group.png",
            title: "Mengenal FrontEnd",
            category: "Front-End Web",
            rating: "4.3",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
          MentorList(
            imagepath: "assets/image/courses2.png",
            title: "Vue Js pemula",
            category: "Front-End Web",
            rating: "4.1",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
          MentorList(
            imagepath: "assets/image/courses3.png",
            title: "Logika Pemrograman",
            category: "Front-End Web",
            rating: "4.5",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
          MentorList(
            imagepath: "assets/image/courses4.png",
            title: "Framework untuk web",
            category: "Front-End Web",
            rating: "4.9",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoute.coursescontent);
            },
          ),
        ],
      ),
    );
  }
}
