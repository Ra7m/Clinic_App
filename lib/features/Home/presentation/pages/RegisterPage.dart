
import 'package:clinic_app/features/Home/presentation/pages/LoginPage.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customTextField.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customappbar.dart';
import 'package:clinic_app/features/Home/presentation/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Registerpage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool visible1 = true;
  bool visible2 = true;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Register Page', Colors.white, true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Form(
            key: formkey,
            child: Center(
              child: Column(
                children: [
                  customTextField(
                    'UserName',
                    Color.fromARGB(255, 21, 50, 100),
                    18,
                    Colors.grey,
                    Colors.grey,
                    Color.fromARGB(255, 21, 50, 100),
                    Icons.person,
                    name,
                    null,
                    TextInputType.text,
                    false
                  ),
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
                      Icons.email,
                      email,
                      null,
                      TextInputType.emailAddress,
                      false),
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
                          visible1 = !visible1;
                          setState(() {});
                        },
                        icon: visible1 == false
                            ? const Icon(
                                Icons.remove_red_eye,
                              )
                            : const Icon(
                                Icons.visibility_off,
                              )),
                    TextInputType.visiblePassword,
                    visible1
                  ),
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
                      Icons.password,
                      confirmpassword,
                      IconButton(
                          onPressed: () {
                            visible2 = !visible2;
                            setState(() {});
                          },
                          icon: visible2 == false
                              ? const Icon(
                                  Icons.remove_red_eye,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                )),
                      TextInputType.visiblePassword,
                      visible2),
                  SizedBox(
                    height: 30,
                  ),
                  customButton('Register', Color.fromARGB(255, 21, 50, 100),
                      Colors.white, () {
                    if (formkey.currentState!.validate()) {
                      print('valid');
                    } else {
                      print('not valid');
                    }
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  }),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Loginpage()),
                        );
                      },
                      child: const Text(
                        'Already Have Account ? Login Now',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
