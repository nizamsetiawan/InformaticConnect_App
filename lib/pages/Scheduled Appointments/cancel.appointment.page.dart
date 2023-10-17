import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';

class CancelPage extends StatefulWidget {
  const CancelPage({super.key});

  @override
  State<CancelPage> createState() => _CancelPageState();
}

class _CancelPageState extends State<CancelPage> {
  String? selectedValue;

  List<String> reason = [
    'I want to change to another mentor',
    'I want to change package',
    'I don`t want to consult',
    'I have recovered from the disease',
    'I have found a suitable medicine',
    'I just want to cancel',
    'I don`t want to tell',
    'Others',
  ];

  @override
  void initState() {
    super.initState();

    selectedValue = reason.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    BackButton(
                      color: Colors.white,
                    ),
                    SizedBox(width: 16,),
                    const Text(
                      'Cancel Appointment',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      'Reason for Schedule Change',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 24,),
                    ListView.separated(
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            selectedValue = reason[index];
                            setState(() {});
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Transform.scale(
                                  scale: 1.3,
                                  child: Radio(
                                      value: reason[index],
                                      groupValue: selectedValue,
                                      activeColor: AppColor.buttoncolor,
                                      onChanged: (s) {
                                        selectedValue = s;
                                        setState(() {});
                                      }),
                                ),
                                Text(
                                  reason[index], 
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: reason.length,
                      separatorBuilder: (context, index) => const SizedBox(height: 12,),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    ),
                    SizedBox(height: 12,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.dividercolor,
                        borderRadius: BorderRadius.circular(24)
                      ),
                      margin: EdgeInsets.only(bottom: 24),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(24),
                          hintText: 'Write Your Reason Here\n',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                          hintMaxLines: 99,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColor.buttoncolor,
                          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16)
                        ),
                        onPressed: () {
                          //
                        }, 
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
