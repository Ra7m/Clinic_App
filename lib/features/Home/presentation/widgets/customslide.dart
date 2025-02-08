import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Customslider extends StatelessWidget {
  const Customslider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.network(
               'https://www.bluecross.org.uk/sites/default/files/d8/styles/theme_feature_extra_large/public/2024-05/BX170007_Daisy-2024-04-23-0911_lpr.jpg.webp?itok=1VaZGoSw',
),
        Image.network(
                  'https://www.princeton.edu/sites/default/files/styles/1x_full_2x_half_crop/public/images/2022/02/KOA_Nassau_2697x1517.jpg?itok=Bg2K7j7J',

),
        Image.network(
            'https://www.humanesociety.org/sites/default/files/2019/03/rabbit-475261_0.jpg'),
      ],
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
