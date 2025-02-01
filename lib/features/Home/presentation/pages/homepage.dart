import 'package:clinic_app/features/Home/presentation/widgets/bottomnavbar.dart';
import 'package:clinic_app/features/Home/presentation/widgets/listviewbuilder.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(currentIndex, (index) {
        currentIndex = index;
        setState(() {});
      }),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Animal Clinic',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 18, 81, 133)),
                ),
              ],
            ),
            listViewBuilder(),
          ],
        ),
      ),
    );
  }
}
