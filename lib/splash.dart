import 'package:clinic_app/features/Home/presentation/pages/RegisterPage.dart';
import 'package:clinic_app/features/Home/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    navigateAfterThreeSeconds();
    super.initState();
  }

  void navigateAfterThreeSeconds() {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Registerpage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            scale: 4.0,
            image: NetworkImage(
                'https://img.freepik.com/premium-vector/pet-clinic-logo-design_626969-91.jpg'),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SpinKitThreeBounce(
                color: Color.fromARGB(255, 21, 50, 100), size: 50.0),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
