import 'package:flutter/material.dart';
import 'package:informaticconnect_app/config/app.color.dart';
import 'package:informaticconnect_app/config/app.route.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgscaffolod,
        leading: const BackButton(
          color: AppColor.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColor.bgscaffolod,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  'assets/image/logo2.png',
                  height: 200,
                ),
              ),
              const Text(
                'Forget Password',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                child: TextFormField(
                  style: const TextStyle(color: AppColor.white),
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 49, 49, 49),
                    filled: true,
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: AppColor.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: AppColor.buttoncolor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.homepage);
                  },
                  child: const Text(
                    'Send',
                    style: TextStyle(
                        color: AppColor.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.signin);
                  },
                  child: const Text(
                    'Sign in with password',
                    style: TextStyle(color: AppColor.buttoncolor),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 1,
                        width: 100,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 44, 44, 43)))),
                    SizedBox(width: 15),
                    Text(
                      'or continue with',
                      style: TextStyle(color: AppColor.white),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      height: 1,
                      width: 100,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 44, 44, 43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 43),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/image/login2.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.homepage);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoute.signup);
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: AppColor.buttoncolor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
