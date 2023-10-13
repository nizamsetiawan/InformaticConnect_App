import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

enum FilterStatus { Upcoming, Completed, Cancelled }

class _AppointmentState extends State<Appointment> {
  FilterStatus status = FilterStatus.Upcoming;
  Alignment _alignment = Alignment.centerLeft;

  List<dynamic> schedules = [
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Upcoming,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Completed,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Completed,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Completed,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Completed,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Completed,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Completed,
    },
    {
      "mentor_name": "Nizam Setiawan",
      "mentor_profile": "asset_image",
      "status": FilterStatus.Cancelled,
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
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 36, bottom: 12),
              child: const Text(
                'My Appointment',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (FilterStatus filterStatus in FilterStatus.values)
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (filterStatus == FilterStatus.Upcoming) {
                                  status = FilterStatus.Upcoming;
                                  _alignment = Alignment.centerLeft;
                                } else if (filterStatus ==
                                    FilterStatus.Completed) {
                                  status = FilterStatus.Completed;
                                  _alignment = Alignment.center;
                                } else if (filterStatus ==
                                    FilterStatus.Cancelled) {
                                  status = FilterStatus.Cancelled;
                                  _alignment = Alignment.centerRight;
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                child: Center(
                                  child: Text(
                                    filterStatus.name,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                )),
                          ))
                      ],
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: AnimatedAlign(
                    alignment: _alignment,
                    duration: const Duration(milliseconds: 00),
                    child: Container(
                      decoration: const BoxDecoration(color: AppColor.bgscaffolod),
                      child: Column(
                        children: [
                          Text(
                            status.name,
                            style: const TextStyle(
                              color: AppColor.buttoncolor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 12),
                            width: 115,
                            height: 2,
                            color: AppColor.buttoncolor,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredSchedules.length,
                itemBuilder: ((context, index) {
                  var _scheduled = filteredSchedules[index];
                  bool isLastElement = filteredSchedules.length + 1 == index;
                  if (status == FilterStatus.Upcoming) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: !isLastElement
                          ? const EdgeInsets.only(bottom: 24)
                          : EdgeInsets.zero,
                      color: const Color(0xff1F222A),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            upcomingAppointmentCard(_scheduled),
                            upcomingButtonCard(context),
                          ],
                        ),
                      ),
                    );
                  } else if (status == FilterStatus.Completed) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: !isLastElement
                          ? const EdgeInsets.only(bottom: 24)
                          : EdgeInsets.zero,
                      color: const Color(0xff1F222A),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            completedAppointmentCard(_scheduled),
                            completedButtonCard(context),
                          ],
                        ),
                      ),
                    );
                  } else if (status == FilterStatus.Cancelled) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: !isLastElement
                          ? const EdgeInsets.only(bottom: 24)
                          : EdgeInsets.zero,
                      color: const Color(0xff1F222A),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            cancelledAppointmentCard(_scheduled),
                          ],
                        ),
                      ),
                    );
                  }
                  return null;
                }),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row upcomingAppointmentCard(_scheduled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blueGrey),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _scheduled['mentor_name'],
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text(
                  'Messaging - ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.buttoncolor, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    status.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.buttoncolor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  'Tanggal | ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Jam',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(40, 36, 107, 253),
              borderRadius: BorderRadius.circular(24)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded, color: Colors.blue),
          ),
        )
      ],
    );
  }

  Row completedAppointmentCard(_scheduled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blueGrey),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _scheduled['mentor_name'],
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text(
                  'Messaging - ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff07BD74), width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    status.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff07BD74),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  'Tanggal | ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Jam',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(40, 36, 107, 253),
              borderRadius: BorderRadius.circular(24)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded, color: Colors.blue),
          ),
        )
      ],
    );
  }

  Row cancelledAppointmentCard(_scheduled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blueGrey),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _scheduled['mentor_name'],
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text(
                  'Messaging - ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffF75555), width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    status.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF75555),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  'Tanggal | ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Jam',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(40, 36, 107, 253),
              borderRadius: BorderRadius.circular(24)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded, color: Colors.blue),
          ),
        )
      ],
    );
  }

  Column completedButtonCard(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 12),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.bgwidget,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side:
                            const BorderSide(color: AppColor.buttoncolor, width: 2))),
                onPressed: () {},
                child: const Text(
                  'Book Again',
                  style: TextStyle(color: AppColor.buttoncolor),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Column upcomingButtonCard(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 12),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.bgwidget,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side:
                            const BorderSide(color: AppColor.buttoncolor, width: 2))),
                onPressed: () {},
                child: const Text(
                  'Cancel Appointment',
                  style: TextStyle(color: AppColor.buttoncolor),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
