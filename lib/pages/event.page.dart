import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "On Going Event",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ), // Space between "On Going Event" text and content below

            // Content for "On Going Event"
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event Image
                  Container(
                    width: 100.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                        "assets/event_image.png"), // Replace with the correct image path
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event Title",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Speaker Name",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Event Date",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        // Right arrow button
                        Positioned(
                          right: 8.0,
                          bottom: 8.0,
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              // Add appropriate logic here
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Text "Upcoming Event"
            Text(
              "Upcoming Event",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ), // Space between "Upcoming Event" text and content below

            // Content for "Upcoming Event"
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event Image
                  Container(
                    width: 100.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                        "assets/event_image.png"), // Replace with the correct image path
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Event Title",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Speaker Name",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Event Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Price",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          // Right arrow button
                          IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              // Add appropriate logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
