import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Appointment", backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.picture_as_pdf), label: "Course", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.edit_document), label: "Articles", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile", backgroundColor: Colors.red),
        ]), body: SafeArea(
          child: Column(
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
                  )
                ],
              )
            ],
          )
        ],
          )),);
  }
}