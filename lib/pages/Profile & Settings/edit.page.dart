import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(top: 24, left: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )),
          backgroundColor: const Color(0xff181A20),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 48, 24, 48),
              child: Column(
                children: [
                  Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'Nizam Setiawan',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'Nizam',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: '12/27/1994',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'nizamsetiawan15@gmail.com',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'Male',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(90, 0),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text('Update'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
