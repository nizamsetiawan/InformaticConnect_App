import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/home.dart';
import 'package:informaticconnect_app/pages/singup.page.dart';
import 'package:informaticconnect_app/pages/splashscree.dart';

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
            GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
        scaffoldBackgroundColor: AppColor.secondcolor,
        primaryColor: AppColor.firstcolor,
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return const SplashscreenPage();
              } else {
                return const HomePage();
              }
            },
          );
        },
        AppRoute.splashscreen: (context) => const SplashscreenPage(),
        AppRoute.singup: (context) => const SingupPage(),
      },
    );
  }
}
