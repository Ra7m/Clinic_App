import 'package:clinic_app/features/Home/presentation/widgets/customTextField.dart';
import 'package:clinic_app/features/Home/presentation/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                customTextField(
                    'UserName',
                    Color.fromARGB(255, 21, 50, 100),
                    18,
                    Colors.grey,
                    Colors.grey,
                    Color.fromARGB(255, 21, 50, 100),
                    Icons.person),
                SizedBox(
                  height: 30,
                ),
                customTextField(
                    'Password',
                    Color.fromARGB(255, 21, 50, 100),
                    18,
                    Colors.grey,
                    Colors.grey,
                    Color.fromARGB(255, 21, 50, 100),
                    Icons.lock),
                SizedBox(
                  height: 30,
                ),
                customButton(
                    'Login', Color.fromARGB(255, 21, 50, 100), Colors.white,
                    () {
                  Navigator.pop(context);
                })
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
