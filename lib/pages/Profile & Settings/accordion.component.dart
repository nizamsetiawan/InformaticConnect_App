import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      color: Color(0xff1F222A),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _showContent = !_showContent;
          });
        },
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  widget.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(
                  _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.orange,
                ),
              ),
              _showContent
                  ? Container(
                      padding: EdgeInsets.fromLTRB(14, 0, 14, 14),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xff35383F),
                              width: 2.0,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          widget.content,
                        ),
                      ))
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
