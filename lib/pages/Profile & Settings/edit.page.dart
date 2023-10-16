import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    String dateText = selectedDate != null
        ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
        : 'Select a date';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(top: 24, left: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )),
          backgroundColor: const Color(0xff181A20),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 48, 24, 48),
              child: Column(
                children: [
                  Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'Nizam Setiawan',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'Nizam',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        readOnly: true,
                        onTap: () => _selectDate(context),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF1F222A),
                          hintText: dateText,
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => _selectDate(context),
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF1F222A),
                            hintText: 'nizamsetiawan15@gmail.com',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Color(0xff1F222A),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: DropdownButtonFormField<String>(
                          dropdownColor: Color(0xff1F222A),
                          icon: Container(
                            width: 0,
                          ),
                          items: ['Male', 'Female', 'Prefer Not To Say']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Select an option',
                            hintStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(90, 0),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text('Update'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
