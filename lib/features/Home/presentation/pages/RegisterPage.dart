import 'package:clinic_app/core/validator.dart';
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
      appBar: customAppBar(
        'Register Page',
        Color.fromARGB(255, 219, 245, 241),
        true,
      ),
      body: Form(
        key: formkey,
        child: Center(
          child: Stack(
            children: [
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
                      false,
                      (value) {
                        return MyValidators.displayNameValidator(value);
                      },
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
                      false,
                      (value) {
                        return MyValidators.emailValidator(value);
                      },
                    ),
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
                      visible1,
                      (value) {
                        return MyValidators.passwordValidator(value);
                      },
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
                      visible2,
                      (value) {
                        return MyValidators.repeatPasswordValidator(
                            labelText: 'Confirm Password',
                            value: value,
                            password: password.text);
                      },
                    ),
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
                        child: const Text('Already Have Account ? Login Now',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
