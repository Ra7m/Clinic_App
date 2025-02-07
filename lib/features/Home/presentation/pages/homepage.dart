import 'package:clinic_app/features/Home/presentation/widgets/bottomnavbar.dart';
import 'package:clinic_app/features/Home/presentation/widgets/listviewbuilder.dart';
import 'package:clinic_app/mapclass.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  List li = [
    work('Rahma', 23, DateTime.now()),
    work('Eman', 20, DateTime.now()),
    work('Yousef', 18, DateTime.now()),
  ];

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
            Card(
              elevation: 15,
              shadowColor: Color.fromARGB(255, 21, 50, 100),
              color: const Color.fromARGB(255, 219, 245, 241),
              child: Column(
                children: li.map((value) {
                  return ListTile(
                    title: Text(
                      value.name,
                      style: TextStyle(
                          color: Color.fromARGB(255, 21, 50, 100),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      value.age.toString(),
                      style: TextStyle(
                          color: Color.fromARGB(255, 139, 175, 237),
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    trailing: Text(
                      value.dot.toString(),
                      style: TextStyle(
                          color: Color.fromARGB(255, 44, 44, 57),
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
