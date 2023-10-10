import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';
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
                return const HomePage(); // halaman otomatis awal jika aplikasi diluncurkan
              } else {
                return const SplashscreenPage();
              }
            },
            future: null,
          );
        },
        AppRoute.homepage: (context) =>
            const HomePage(), //identifikasi sini tiap halaman
      },
    );
  }
}
