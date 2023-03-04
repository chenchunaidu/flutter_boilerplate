import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/theme/color.dart';

class Fonts {
  static const String poppins = 'Poppins';
}

// this has to be changed
class TextStyles {
  static const TextStyle poppins = TextStyle(
    fontFamily: Fonts.poppins,
  );
  static const TextStyle buttonText1 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14);
  static const TextStyle buttonText2 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 11);
  static const TextStyle h1 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 32);
  static const TextStyle h2 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 20);
  static const TextStyle h3 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 16);
  static late TextStyle body1 = TextStyle();
}
