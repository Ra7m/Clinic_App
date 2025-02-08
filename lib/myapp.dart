import 'package:clinic_app/features/Home/presentation/pages/homepage.dart';
import 'package:clinic_app/features/Home/presentation/widgets/customsinglescroll.dart';
import 'package:clinic_app/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      // Customslider(),

      //  SplashScreen(),
    );
  }
}
