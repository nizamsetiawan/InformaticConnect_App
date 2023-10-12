import 'package:flutter/material.dart';

class Appoinment extends StatefulWidget {
  const Appoinment({super.key});

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

enum FilterStatus {upcoming, completed, cancelled}

class _AppoinmentState extends State<Appoinment> {
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
    return const Scaffold(
      body: Center(
        child: Text('Appoinment Page'),
      ),
    );
  }
}
