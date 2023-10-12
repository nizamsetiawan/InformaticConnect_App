import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/Courses/courses.content.page.dart';
import 'package:informaticconnect_app/pages/Courses/courses.page.dart';
// import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';
// import 'package:informaticconnect_app/pages/artikel/artikel.page.dart';
import 'package:informaticconnect_app/pages/Scheduled%20Appointments/appoinment.page.dart';
import 'package:informaticconnect_app/pages/onboarding/splashscreen.page.dart';
import 'config/app.color.dart';
import 'config/app.route.dart';
import 'package:informaticconnect_app/pages/Home & Action Menu/home.page.dart';

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
                return const SplashscreenPage();
              }
            },
            future: null,
          );
        },

        AppRoute.homepage: (context) =>
            const HomePage(), //identifikasi sini tiap halaman

        AppRoute.splashscreen: (context) => const SplashscreenPage(),
        AppRoute.courses: (context) => const CoursesPage(),
        AppRoute.coursescontent: (context) =>
            const CoursesContentPage(), //identifikasi sini tiap halaman

        //identifikasi sini tiap halaman
        AppRoute.appointment: (context) => const Appointment(),
      },
    );
  }
}
