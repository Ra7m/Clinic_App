import 'package:clinic_app/core/validator.dart';
import 'package:clinic_app/features/Home/presentation/pages/RegisterPage.dart';
import 'package:clinic_app/features/Home/presentation/pages/homepage.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customTextField.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customappbar.dart';
import 'package:clinic_app/features/Home/presentation/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool visible = false;
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Login Page',         Color.fromARGB(255, 219, 245, 241),
 true),
      body: Form(
        key: formkey,
        child: Center(
          child: Stack(
            children:[ 
              Image(
                image: AssetImage('assets/images/iimg1.jpg'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  customTextField(
                      'User Name',
                      Color.fromARGB(255, 21, 50, 100),
                      18,
                      Colors.grey,
                      Colors.grey,
                      Color.fromARGB(255, 21, 50, 100),
                      Icons.person,
                      name,
                      null,
                      TextInputType.text,
                      false,
                       (value) {
                      return MyValidators.displayNameValidator(value);
                    },),
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
                      Icons.password,
                      password,
                      IconButton(
                          onPressed: () {
                            visible = !visible;
                            setState(() {});
                          },
                          icon: visible == false
                              ? const Icon(
                                  Icons.remove_red_eye,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                )),
                      TextInputType.visiblePassword,
                      visible,
                      (value) {
                      return MyValidators.passwordValidator(value);
                    },),
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
                      return  Homepage();
                    }));
                  }),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Registerpage()),
                        );
                      },
                      child: const Text(
                        'Don`t Have Account ? Register Now',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
