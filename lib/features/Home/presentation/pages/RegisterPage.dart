import 'package:clinic_app/features/Home/presentation/pages/LoginPage.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customTextField.dart';
import 'package:clinic_app/features/Home/presentation/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Registerpage> {
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
                    'Email',
                    Color.fromARGB(255, 21, 50, 100),
                    18,
                    Colors.grey,
                    Colors.grey,
                    Color.fromARGB(255, 21, 50, 100),
                    Icons.email),
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
                customTextField(
                    'Confirm Password',
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
                    'Register', Color.fromARGB(255, 21, 50, 100), Colors.white,
                    () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                }),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
