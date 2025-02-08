import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Column svg() {
  return Column(
    children: [
      SvgPicture.network(
        'https://svgsilh.com/svg_v2/1801287.svg',
        height: 175,
        width: 150,
        colorFilter: ColorFilter.mode(
            Color.fromARGB(255, 18, 81, 133), BlendMode.modulate),
      )
    ],
  );
}
