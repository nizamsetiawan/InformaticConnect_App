import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:get/get.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgscaffolod,
      appBar: AppBar(
        title: const Text("Courses"),
        backgroundColor: AppColor.bgscaffolod,
      ),
      body: ListView(
        children: [
          Container(
            height: 142,
            decoration: BoxDecoration(
                color: AppColor.bgwidget,
                borderRadius: BorderRadius.circular(24)),
            margin: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Image.asset("assets/courses_image.png"),
                ),
                Container(
                  height: 110,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Title Video A",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 14),
                      Container(
                        width: 202,
                        height: 1,
                        color: AppColor.dividercolor,
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        "Front-End Web",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 14),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.3",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "(5,376 reviews)",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // CARD 2
          Container(
            height: 142,
            decoration: BoxDecoration(
                color: AppColor.bgwidget,
                borderRadius: BorderRadius.circular(24)),
            margin: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Image.asset("assets/event_image.png"),
                ),
                Container(
                  height: 110,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Title Video B",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 14),
                      Container(
                        width: 202,
                        height: 1,
                        color: AppColor.dividercolor,
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        "Front-End Web",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 14),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.3",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "(5,376 reviews)",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
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
