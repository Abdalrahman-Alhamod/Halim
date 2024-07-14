import 'package:flutter/material.dart';

Color mixColors(List<Color> colors) {
  int sumAlpha = 0;
  int r = 0;
  int g = 0;
  int b = 0;
  double o = 0.0;
  if (colors.isEmpty) return Color.fromRGBO(r, g, b, o);

  for (int i = 0; i < colors.length; i++) {
    r += (colors[i].red * colors[i].alpha);
    g += (colors[i].green * colors[i].alpha);
    b += (colors[i].blue * colors[i].alpha);
    o += colors[i].opacity;
    sumAlpha += colors[i].alpha;
  }
  r = (r / sumAlpha).roundToDouble().toInt();
  g = (g / sumAlpha).roundToDouble().toInt();
  b = (b / sumAlpha).roundToDouble().toInt();
  o = o / colors.length;

  Color result = Color.fromRGBO(r, g, b, o);
  return result;
}
