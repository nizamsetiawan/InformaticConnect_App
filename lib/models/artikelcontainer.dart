import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class ArtikelContainer extends StatelessWidget {
  final String imagepath;
  final String title;
  final String date;
  final String path;
  final VoidCallback onTap;

  ArtikelContainer({
    required this.imagepath,
    required this.title,
    required this.date,
    required this.path,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.bgscaffolod,
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
              child: Image.asset(
                imagepath,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
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
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: AppColor.bgwidget,
                      borderRadius: BorderRadius.circular(
                          10), // Mengatur tingkat ke tumpulan
                    ),
                    child: Text(
                      path,
                      style: TextStyle(color: AppColor.buttoncolor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
