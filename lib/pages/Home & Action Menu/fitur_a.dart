import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/models/mentor.dart';
import 'package:english_words/english_words.dart';
import 'package:informaticconnect_app/provider/favorite_prov.dart';
import 'package:provider/provider.dart';


class fiturAPage extends StatefulWidget {
  const fiturAPage({Key? key}) : super(key: key);

  @override
  State<fiturAPage> createState() => _fiturAPageState();
}

class _fiturAPageState extends State<fiturAPage> {
  final List<String> categories = [
    'Back End',
    'Front End',
    'Mobile',
  ];
  List<String> selectedCategories = [

  ];
  List imageList = [
    {"id": 1, "image_path": 'assets/image/cardcoresoul.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(10).toList();
    final provider = Provider.of<FavoriteProvider>(context);
    final filterMentors = mentorList.where((mentor) {
      return selectedCategories.isEmpty || 
      selectedCategories.contains(mentor.category);
    }).toList();
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [



            Expanded(child: ListView.builder(
              itemCount: words.length,
        itemBuilder: (context, index){
          final word = words[index];
          return ListTile(
          title: Text(word),
          trailing: IconButton(
            onPressed: () {
              provider.toggleFavorite(word);
            },
            icon: provider.isExist(word)
            ? const Icon(Icons.favorite, color: Colors.red)
            : const Icon(Icons.favorite_border),
          ),
          );
        },
            ),
            ),
            ],
      ),
        ],
      ),
          );
  }
}
