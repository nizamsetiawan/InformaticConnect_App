// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:informaticconnect_app/config/app.color.dart';
// // import 'package:informaticconnect_app/models/mentor.dart';
// import 'package:english_words/english_words.dart';
// // import 'package:informaticconnect_app/provider/favorite_prov.dart';
// import 'package:provider/provider.dart';
// import '../../config/app.route.dart';
// import '../../controllers/bottomnavbar.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<String> categories = [
//     'Back End',
//     'Front End',
//     'Mobile',
//   ];
//   List<String> selectedCategories = [

//   ];
//   List imageList = [
//     {"id": 1, "image_path": 'assets/image/cardcoresoul.png'},
//   ];
//   final CarouselController carouselController = CarouselController();
//   int currentIndex = 0;

//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     // Handle navigation based on the index (your existing code)
//     if (index == 0) {
//       Navigator.of(context).pushNamed(AppRoute.homepage);
//     } else if (index == 1) {
//       Navigator.of(context).pushNamed(AppRoute.appointment);
//     } else if (index == 2) {
//       Navigator.of(context).pushNamed(AppRoute.courses);
//     } else if (index == 3) {
//       Navigator.of(context).pushNamed(AppRoute.artikel);
//     } else if (index == 4) {
//       Navigator.of(context).pushNamed(AppRoute.profile);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final words = nouns.take(10).toList();
//     final provider = Provider.of<FavoriteProvider>(context);
//     final filterMentors = mentorList.where((mentor) {
//       return selectedCategories.isEmpty || 
//       selectedCategories.contains(mentor.category);
//     }).toList();
//     return Scaffold(
//       bottomNavigationBar: CustomBottomNavigation(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//       body: ListView(
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 140,
//                 width: double.infinity,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(15),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               alignment: Alignment.topLeft,
//                               height: 45,
//                               width: 45,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image:
//                                         AssetImage('assets/image/Ellipse.png')),
//                                 borderRadius: BorderRadius.circular(25),
//                                 border: Border.all(
//                                   color: Colors.white,
//                                   style: BorderStyle.solid,
//                                   width: 2,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "Welcome 👋\n Nizam Setiawan",
//                               style: TextStyle(
//                                   color: AppColor.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           alignment: Alignment.topRight,
//                           child: Icon(
//                             Icons.favorite,
//                             color: Colors.red,
//                             size: 30,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(15),
//                     child: Container(
//                       height: 60,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: AppColor.bgwidget,
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: TextField(
//                         cursorHeight: 20,
//                         autofocus: false,
//                         decoration: InputDecoration(
//                           hintText: "Cari Mentor Favoritmu",
//                           prefixIcon: Icon(Icons.search),
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       Stack(
//                         children: [
//                           InkWell(
//                             onTap: () {
//                               print(currentIndex);
//                             },
//                             child: CarouselSlider(
//                               items: imageList
//                                   .map(
//                                     (item) => Image.asset(
//                                       item['image_path'],
//                                       fit: BoxFit.cover,
//                                       width: double.infinity,
//                                     ),
//                                   )
//                                   .toList(),
//                               carouselController: carouselController,
//                               options: CarouselOptions(
//                                 scrollPhysics: const BouncingScrollPhysics(),
//                                 autoPlay: true,
//                                 aspectRatio: 2,
//                                 viewportFraction: 1,
//                                 onPageChanged: (index, reason) {
//                                   setState(() {
//                                     currentIndex = index;
//                                   });
//                                 },
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 Container (
//               padding: EdgeInsets.all(8.0),
//               margin: EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: categories
//                   .map(
//                     (category) => FilterChip(
//                       selected: selectedCategories.contains(category),
//                       label: Text(category), onSelected: (selected){
//                         setState(() {
//                           if (selected){
//                           selectedCategories.add(category);
//                         }else{
//                           selectedCategories.remove(category);
//                         }
//                         });
//                 }),
//                 )
//                 .toList(),
//               ),

//             ),
//             Expanded(child: ListView.builder(
//               itemCount: filterMentors.length, 
//               itemBuilder: (context, index){
//                 final mentor = filterMentors[index];
//                 return Card(
//                   elevation: 8.0,
//                   margin: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: const BoxDecoration(color: AppColor.buttoncolor),
//                     child:  ListTile(
//                       contentPadding: 
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                       title: Text(
//                         mentor.name, 
//                         style: const TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.bold),
//                           ),
//                       subtitle:  Text(
//                         mentor.category, 
//                         style: const TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
//                         ),
//                     ),
//                   ),
//                 );
//             }),
//             )
//             ],
//                ),
//             Expanded(child: ListView.builder(
//               itemCount: words.length,
//         itemBuilder: (context, index){
//           final word = words[index];
//           return ListTile(
//           title: Text(word),
//           trailing: IconButton(
//             onPressed: () {
//               provider.toggleFavorite(word);
//             },
//             icon: provider.isExist(word)
//             ? const Icon(Icons.favorite, color: Colors.red)
//             : const Icon(Icons.favorite_border),
//           ),
//           );
//         },
//             ),
//             ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
