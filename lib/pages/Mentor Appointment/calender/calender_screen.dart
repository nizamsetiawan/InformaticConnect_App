import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

import 'package:informaticconnect_app/pages/Mentor%20Appointment/calender/custom_calendar.dart';

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class DarkBookappointment extends StatefulWidget {
  const DarkBookappointment(
      {Key? key,
      this.initialStartDate,
      this.onApplyClick,
      this.onCancelClick,
      this.barrierDismissible = true,
      this.minimumDate,
      this.maximumDate})
      : super(key: key);
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final bool barrierDismissible;
  final DateTime? initialStartDate;

  final Function(DateTime, DateTime)? onApplyClick;
  final Function()? onCancelClick;

  @override
  State<DarkBookappointment> createState() => _DarkBookappointmentState();
}

class _DarkBookappointmentState extends State<DarkBookappointment> {
  AnimationController? animationController;
  DateTime? startDate = DateTime.now();
  DateTime? endDate;
  int selectedButtonIndex = -1;

  Color containerColor = Colors.transparent;
  Color buttonColor = Colors.transparent;
  Color textColor = Color(0xFFFF731D); // Warna teks saat tombol berwarna
  late List<Color> buttonColors;
  late List<Color> textColors;

  @override
  void initState() {
    super.initState();
    // Inisialisasi warna tombol dan teks
    buttonColors = List.generate(
        12,
        (index) => index == selectedButtonIndex
            ? Color(0xFFFF731D)
            : Colors.transparent);
    textColors = List.generate(
        12,
        (index) =>
            index == selectedButtonIndex ? Colors.white : Color(0xFFFF731D));
  }

  void changeColor(int index) {
    setState(() {
      selectedButtonIndex = index; // Atur indeks yang dipilih

      buttonColors = List.generate(
          12,
          (index) => index == selectedButtonIndex
              ? Color(0xFFFF731D)
              : Colors.transparent);
      textColors = List.generate(
          12,
          (index) =>
              index == selectedButtonIndex ? Colors.white : Color(0xFFFF731D));
    });
  }

  List<String> times = [
    "09:00 AM",
    "09:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "15:00 PM",
    "15:30 PM",
    "16:00 PM",
    "16:30 PM",
    "17:00 PM",
    "17:30 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        appBar: AppBar(
          backgroundColor: const Color(0xff181A20),
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 16),
                const Text(
                  'Book Appointment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
<<<<<<< HEAD
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Select Date',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
=======

              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(height: 20,),
             const   Align(
                  alignment: Alignment.centerLeft,
                  child:
                   Text(
                    
                          'Select Date',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            height: 0.06,
                          ),
                        ),),
>>>>>>> 39329035c4f23abce264dc7f30c7e4afe9a39e84
                  Card(
                    color: AppColor.bgwidget,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: CustomCalendarView(
                      minimumDate: widget.minimumDate,
                      maximumDate: widget.maximumDate,
                      initialStartDate: widget.initialStartDate,
                    ),
                  ),
<<<<<<< HEAD
                  SizedBox(
                    height: 20,
                  ),
=======
                  SizedBox(height: 20,),
>>>>>>> 39329035c4f23abce264dc7f30c7e4afe9a39e84
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
<<<<<<< HEAD
                          margin: EdgeInsets.only(top: 25),
                          child: const Text(
                            'Select Hour',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                              height: 0.06,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
=======
                          
                          margin: EdgeInsets.only(top: 25),
                          child :
                        const Text(
                        
                          'Select Hour',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            height: 0.06,
                          ),
                        ),),
                        const SizedBox(height: 16),
                        GridView.builder(
                          gridDelegate:
                            const  SliverGridDelegateWithFixedCrossAxisCount(
>>>>>>> 39329035c4f23abce264dc7f30c7e4afe9a39e84
                            crossAxisCount: 3, // 3 item per baris
                            mainAxisSpacing: 10, // Jarak vertikal antara item
                            crossAxisSpacing:
                                10, // Jarak horizontal antara item
<<<<<<< HEAD
                            childAspectRatio: 2.5,
                            // Sesuaikan dengan perbandingan lebar dan tinggi yang diinginkan
                          ),
                          itemCount: times.length,
=======
                            childAspectRatio:
                                2.5, 
                                // Sesuaikan dengan perbandingan lebar dan tinggi yang diinginkan
                          ),
                          itemCount: times.length,
                          
>>>>>>> 39329035c4f23abce264dc7f30c7e4afe9a39e84
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                changeColor(index);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      20), // Sesuaikan nilai sesuai keinginan Anda
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFFFF731D),
                                  ),
                                  color: buttonColors[index],
                                ),
                                child: Center(
                                  child: Text(
                                    times[index],
                                    style: TextStyle(
                                      color: textColors[index],
                                      fontSize: 18,
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
<<<<<<< HEAD
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DarkBookappointment(),
                    )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 130.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
=======
                       const  SizedBox(height: 30,),
               
                  ElevatedButton(
                    
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DarkBookappointment(),
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
             padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 130.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
>>>>>>> 39329035c4f23abce264dc7f30c7e4afe9a39e84
              ),
            ),
          ),
        ),
      ),
    );
  }
}
