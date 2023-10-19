import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:informaticconnect_app/pages/Courses/courses.content.page.dart';
import 'package:informaticconnect_app/pages/Courses/courses.page.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/error_page.dart';
// import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/favorites.dart';
// import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mensearch.page.dart';
// import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/main_fitur.dart';
// import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor.page.dart';
// import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/mentor_favorit.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/search_screen.dart';
import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';
import 'package:informaticconnect_app/pages/Home & Action Menu/daftar_mentor.dart';
// import 'package:informaticconnect_app/pages/Home & Action Menu/favorit_page.dart';
// import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';
// import 'package:informaticconnect_app/pages/artikel/artikel.page.dart';

// import 'package:informaticconnect_app/pages/Profile%20&%20Settings/profile.page.dart';

import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/login.page.dart';
import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/signin.page.dart';
import 'package:informaticconnect_app/pages/Sign%20up%20&%20Sign%20in/signup.page.dart';

// import 'package:informaticconnect_app/pages/artikel/artikel.page.dart';

import 'package:informaticconnect_app/pages/Scheduled%20Appointments/appoinment.page.dart';

import 'package:informaticconnect_app/pages/onboarding/splashscreen.page.dart';
import 'package:informaticconnect_app/provider/favorite_prov.dart';
import 'package:provider/provider.dart';
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
    // return MultiProvider(providers: [
    //   ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
    // ],
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
        scaffoldBackgroundColor: AppColor.bgscaffolod,
        primaryColor: AppColor.buttoncolor,
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return  CobaPage(); // halaman otomatis awal jika aplikasi diluncurkan
              } else {
                return  CobaPage();
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

        AppRoute.homepage: (context) =>
            const HomePage(), //identifikasi sini tiap halaman

        AppRoute.courses: (context) => const CoursesPage(),
        AppRoute.coursescontent: (context) => const CoursesContentPage(),
        AppRoute.appointment: (context) => const Appointment(),
        AppRoute.profile: (context) => const ProfilePage(),
        AppRoute.error: (context) =>  ErrorPage(),
      },
      ),
    );
  }
}
// Fungsi untuk mendapatkan daftar mentor favorit
List<Mentor> getFavoriteMentors() {
  return dummyMentors.where((mentor) => mentor.isFavorite).toList();
}
