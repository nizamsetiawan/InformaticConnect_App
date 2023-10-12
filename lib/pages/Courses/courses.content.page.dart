import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class CoursesContentPage extends StatelessWidget {
  const CoursesContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgscaffolod,
      appBar: AppBar(
        backgroundColor: AppColor.bgscaffolod,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 240,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
            ),
            child: Image.asset("asset/courses.png"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 400,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dec 22, 2022",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: AppColor.bgwidget,
                                borderRadius: BorderRadius.circular(6)),
                            child: Text(
                              "android",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 400,
                        height: 1,
                        color: AppColor.dividercolor,
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum AndroidDec 22, 2022 Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum AndroidDec 22, 2022 Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum AndroidDec 22, 2022 Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum AndroidDec 22,",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
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
