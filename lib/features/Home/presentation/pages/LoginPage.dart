import 'package:clinic_app/features/Home/presentation/pages/homepage.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customTextField.dart';
import 'package:clinic_app/features/Home/presentation/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: formkey,
      child: Scaffold(
        body: Form(
          child: Center(
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
                    if (formkey.currentState!.validate()) {
                      print('valid');
                    } else {
                      print('not valid');
                    }
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Homepage();
                      }));
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
