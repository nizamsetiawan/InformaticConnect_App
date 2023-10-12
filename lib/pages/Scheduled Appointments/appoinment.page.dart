import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

enum FilterStatus {upcoming, completed, cancelled}

class _AppointmentState extends State<Appointment> {
  FilterStatus status = FilterStatus.upcoming;
  Alignment _alignment = Alignment.centerLeft;

  List<dynamic> schedules = [
    {
      "mentor_name":"Nizam Setiawan",
      "mentor_profile":"asset_image",
      "status":FilterStatus.upcoming,
    },
    {
      "mentor_name":"Nizam Setiawan",
      "mentor_profile":"asset_image",
      "status":FilterStatus.completed,
    },
    {
      "mentor_name":"Nizam Setiawan",
      "mentor_profile":"asset_image",
      "status":FilterStatus.cancelled,
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredSchedules = schedules.where((var schedule) {
      // switch(schedule['status']){}
      return schedule['status'] == status;
    }).toList();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text('My Appointment', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
