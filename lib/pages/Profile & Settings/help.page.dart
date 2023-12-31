import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/accordion.component.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'Help Center',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                )),
            backgroundColor: const Color(0xff181A20),
            elevation: 0.0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(95),
              child: Container(
                margin: const EdgeInsets.only(top: 48),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const TabBar(
                    indicatorColor: Colors.orange,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text(
                          'FAQ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
              ),
            )),
        body: TabBarView(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 48),
                child: const Column(
                  children: [
                    Accordion(
                        title: "What is IC?",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    Accordion(
                        title: "How to use IC?",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    Accordion(
                        title: "How do I cancel an appointment?",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    Accordion(
                        title: "How do I save the recording?",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    Accordion(
                        title: "How do I exit the app?",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 48),
                child: Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: const Color(0xff1F222A),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text("Whatsapp"),
                                leading: SvgPicture.asset(
                                  'assets/icons/whatsapp.svg',
                                  color: Colors.orange,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: const Color(0xff1F222A),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text("Website"),
                                leading: SvgPicture.asset(
                                  'assets/icons/website.svg',
                                  color: Colors.orange,
                                  height: 27,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: const Color(0xff1F222A),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text("Facebook"),
                                leading: SvgPicture.asset(
                                  'assets/icons/facebook.svg',
                                  color: Colors.orange,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: const Color(0xff1F222A),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text("Twitter"),
                                leading: SvgPicture.asset(
                                  'assets/icons/twitter.svg',
                                  color: Colors.orange,
                                  height: 27,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: const Color(0xff1F222A),
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text("Instagram"),
                              leading: SvgPicture.asset(
                                'assets/icons/instagram.svg',
                                color: Colors.orange,
                                height: 27,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
