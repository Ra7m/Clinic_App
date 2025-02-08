import 'package:flutter/material.dart';

SingleChildScrollView Scrollmethod() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(28.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Column(
          children: [
            Image(
                width: 150,
                height: 75,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.bluecross.org.uk/sites/default/files/d8/styles/theme_feature_extra_large/public/2024-05/BX170007_Daisy-2024-04-23-0911_lpr.jpg.webp?itok=1VaZGoSw')),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 18, 81, 133),
              ),
              width: 100,
              height: 50,
              child: Center(
                child: Text('Cats',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Image(
                width: 150,
                height: 75,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.bluecross.org.uk/sites/default/files/d8/styles/theme_feature_extra_large/public/2024-05/BX170007_Daisy-2024-04-23-0911_lpr.jpg.webp?itok=1VaZGoSw')),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 18, 81, 133),
              ),
              width: 100,
              height: 50,
              child: Center(
                child: Text('Cats',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Image(
                width: 150,
                height: 75,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.bluecross.org.uk/sites/default/files/d8/styles/theme_feature_extra_large/public/2024-05/BX170007_Daisy-2024-04-23-0911_lpr.jpg.webp?itok=1VaZGoSw')),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 18, 81, 133),
              ),
              width: 100,
              height: 50,
              child: Center(
                child: Text('Cats',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Image(
                width: 150,
                height: 75,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.bluecross.org.uk/sites/default/files/d8/styles/theme_feature_extra_large/public/2024-05/BX170007_Daisy-2024-04-23-0911_lpr.jpg.webp?itok=1VaZGoSw')),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 18, 81, 133),
              ),
              width: 100,
              height: 50,
              child: Center(
                child: Text('Cats',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
            ),
          ],
        ),
      ]),
    ),
  );
}
