import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/favorites.dart';
import 'package:provider/provider.dart';
import 'package:informaticconnect_app/provider/favorite_prov.dart';


class MentorList extends StatelessWidget {
  final String imagepath;
  final String title;
  final String category;
  final String rating;
  final VoidCallback onTap;

  MentorList({
    required this.imagepath,
    required this.title,
    required this.category,
    required this.rating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
        final provider = Provider.of<FavoriteProvider>(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 142,
        decoration: BoxDecoration(
          color: AppColor.bgwidget,
          borderRadius: BorderRadius.circular(24),
        ),
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Image.asset(imagepath),
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    width: 202,
                    height: 1,
                    color: AppColor.dividercolor,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    category,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      SizedBox(width: 5),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "(5,376 reviews)",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
        //           Container(child: ListView.builder(
        // itemBuilder: (context, index){
        //   return ListTile(
        //   trailing: IconButton(
        //     onPressed: () {
        //       provider.toggleFavorite(title);
        //     },
        //     icon: provider.isExist(title)
        //     ? const Icon(Icons.favorite, color: Colors.red)
        //     : const Icon(Icons.favorite_border),
        //   ),
        //   );
        // },
        //     ),
                
        //     ),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
