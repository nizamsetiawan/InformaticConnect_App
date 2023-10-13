import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigation({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          backgroundColor: AppColor.bgscaffolod, // Replace with your color
          icon: Icon(
            Icons.home, // Replace with your icon
            color: currentIndex == 0 ? AppColor.buttoncolor : Colors.grey,
          ),
          label: "Home", // Replace with your label
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColor.bgscaffolod,
          icon: Icon(
            Icons.calendar_month,
            color: currentIndex == 1 ? AppColor.buttoncolor : Colors.grey,
          ),
          label: "Appointment",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColor.bgscaffolod,
          icon: Icon(
            Icons.picture_as_pdf,
            color: currentIndex == 2 ? AppColor.buttoncolor : Colors.grey,
          ),
          label: "Course",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColor.bgscaffolod,
          icon: Icon(
            Icons.edit_document,
            color: currentIndex == 3 ? AppColor.buttoncolor : Colors.grey,
          ),
          label: "Articles",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColor.bgscaffolod,
          icon: Icon(
            Icons.account_circle,
            color: currentIndex == 4 ? AppColor.buttoncolor : Colors.grey,
          ),
          label: "Profile",
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: AppColor.buttoncolor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: onTap,
    );
  }
}
