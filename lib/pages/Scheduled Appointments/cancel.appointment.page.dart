import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/config/app.route.dart';

class CancelPage extends StatefulWidget {
  const CancelPage({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Row(
                children: [
                  BackButton(
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
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
                  const Text(
                    'Reason for Schedule Change',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.separated(
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          selectedValue = reason[index];
                          setState(() {});
                        },
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
                                },
                              ),
                            ),
                            Text(
                              reason[index],
                              style: const TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: reason.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8, // Reduced the height
                    ),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                  ),
                  const SizedBox(
                    height: 8, // Reduced the height
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.dividercolor,
                      borderRadius:
                          BorderRadius.circular(12), // Reduced the radius
                    ),
                    margin:
                        const EdgeInsets.only(bottom: 12), // Reduced the margin
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.all(12), // Reduced the padding
                        hintText: 'Write Your Reason Here\n',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15, // Reduced the font size
                        ),
                        border: InputBorder.none,
                        hintMaxLines: 5, // Reduced the max lines
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColor.buttoncolor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12, // Reduced the vertical padding
                          horizontal: 16, // Reduced the horizontal padding
                        ),
                      ),
                      onPressed: () {
                        cancelAlert();
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 15, // Reduced the font size
                        ),
                      ),
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

  cancelAlert() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            padding: const EdgeInsets.all(16), // Adjusted the padding
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Image.asset('assets/image/suksesbatal.png'),
                  ),
                  const Text(
                    'Cancel Appointment Success!',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20, // Adjusted the font size
                      color: AppColor.buttoncolor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12, // Reduced the height
                  ),
                  const Text(
                    'We are very sad that you have canceled your appointment. We will always improve our service to satisfy you in the next appointment.',
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    width: MediaQuery.of(context).size.width,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColor.buttoncolor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12, // Reduced the vertical padding
                          horizontal: 16, // Reduced the horizontal padding
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoute.homepage);
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 15, // Reduced the font size
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            // Reduced the radius
          ),
          backgroundColor: AppColor.bgscaffolod,
        );
      },
    );
  }
}
