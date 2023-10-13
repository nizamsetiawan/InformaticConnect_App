import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();

class _ArtikelPageState extends State<ArtikelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.bgscaffolod,
        title: Text("Article", style: TextStyle(color: Colors.white)
        ),
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column{
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text(
              "Trending",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                ),
            ),
          ]
        }
      )
    )
    );   
  }
}
}