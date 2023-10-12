import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';
import 'package:informaticconnect_app/pages/onboarding/splashscreen.page.dart';
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
        scaffoldBackgroundColor: AppColor.bgscaffolod,
        primaryColor: AppColor.buttoncolor,
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return const SplashscreenPage(); // halaman otomatis awal jika aplikasi diluncurkan
              } else {
                return const ProfilePage();
              }
            },
            future: null,
          );
        },
        AppRoute.splashscreen: (context) => const SplashscreenPage(),
        AppRoute.courses: (context) => const CoursesPage(),
        AppRoute.coursescontent: (context) =>
            const CoursesContentPage(), //identifikasi sini tiap halaman
      },
    );
  }
}
