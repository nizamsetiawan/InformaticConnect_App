import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';
import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/login.page.dart';
import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/signin.page.dart';
import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/signup.page.dart';
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
                return const LoginPage(); // halaman otomatis awal jika aplikasi diluncurkan
              } else {
                return const ProfilePage();
              }
            },
            future: null,
          );
        },
        AppRoute.splashscreen: (context) => const SplashscreenPage(),
        AppRoute.login: (context) => const LoginPage(),
        AppRoute.signin: (context) => const SigninPage(),
        AppRoute.signup: (context) =>
            const SignupPage(), //identifikasi sini tiap halaman
      },
    );
  }
}
