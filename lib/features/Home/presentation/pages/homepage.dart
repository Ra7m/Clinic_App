
import 'package:clinic_app/features/Home/presentation/widgets/listviewbuilder.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Animal Clinic',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 18, 81, 133)),
            ),
            const SizedBox(
              height: 20,
            ),
            listViewBuilder(),
           

          ],
        ),
      ),
    );
  }
}
