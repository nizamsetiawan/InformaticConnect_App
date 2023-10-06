import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/event.page.dart';
import 'package:informaticconnect_app/pages/eventdetail.page.dart';
import 'package:informaticconnect_app/pages/eventsucces.dart';
import 'package:informaticconnect_app/pages/forgotpass.page.dart';
import 'package:informaticconnect_app/pages/home.page.dart';
import 'package:informaticconnect_app/pages/main.layout.dart';
import 'package:informaticconnect_app/pages/mentor.page.dart';
import 'package:informaticconnect_app/pages/notificationscreen.page.dart';
import 'package:informaticconnect_app/pages/profile.page.dart';
import 'package:informaticconnect_app/pages/singin.page.dart';
import 'package:informaticconnect_app/pages/singup.page.dart';
import 'package:informaticconnect_app/pages/splashscreen.page.dart';

import 'config/app.color.dart';
import 'config/app.route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.black),
        scaffoldBackgroundColor: AppColor.secondcolor,
        primaryColor: AppColor.firstcolor,
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return const SigninPage();
              } else {
                return const HomePage();
              }
            },
            future: null,
          );
        },
        AppRoute.splashscreen: (context) => const SplashscreenPage(),
        AppRoute.singup: (context) => const SingupPage(),
        AppRoute.login: (context) => const SigninPage(),
        AppRoute.forgotpassword: (context) => const ForgotPassPage(),
        AppRoute.main: (context) => const MainLayout(),
        AppRoute.home: (context) => const HomePage(),
        AppRoute.mentor: (context) => const MentorPage(),
        AppRoute.event: (context) => const EventPage(),
        AppRoute.eventdetail: (context) => const EventDetailPage(),
        AppRoute.eventsucces: (context) => const EventSuccesPage(),
        AppRoute.notificationscreen: (context) => const NotificationScreenPage(),
        AppRoute.profile: (context) => const ProfilePage()
      },
    );
  }
}
