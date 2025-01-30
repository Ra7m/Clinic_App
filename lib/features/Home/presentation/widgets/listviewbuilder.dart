import 'package:flutter/material.dart';

class listViewBuilder extends StatefulWidget {
  const listViewBuilder({super.key});

  @override
  State<listViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<listViewBuilder> {
  final List<String> animalImg = [
    'https://www.bluecross.org.uk/sites/default/files/d8/styles/theme_feature_extra_large/public/2024-05/BX170007_Daisy-2024-04-23-0911_lpr.jpg.webp?itok=1VaZGoSw',
    'https://www.princeton.edu/sites/default/files/styles/1x_full_2x_half_crop/public/images/2022/02/KOA_Nassau_2697x1517.jpg?itok=Bg2K7j7J',
    'https://www.humanesociety.org/sites/default/files/2019/03/rabbit-475261_0.jpg',
    'https://www.humanesociety.org/sites/default/files/2019/03/rabbit-475261_0.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animalImg.length,
        itemBuilder: (context, index) {
          final item = animalImg[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(item),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
