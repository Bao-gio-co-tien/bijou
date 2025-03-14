import 'package:flutter/material.dart';

class BijouTheme {

  static const String fontFamily = 'Nunito';
  
  static const Color backgroundColor = Color.fromRGBO(23, 23, 23, 1);

  static const Color colorScheme = Color.fromRGBO(55, 197, 133, 1);
  static const Color boxColor = Color.fromRGBO(57, 57, 57, 1);
  static const Color textBoxColor1 = Color.fromRGBO(102, 102, 102, 1);
  static const Color textBoxColor2 = Color.fromRGBO(150, 150, 150, 0.8);
  static const Color textBoxColorMain = Color.fromRGBO(255, 255, 255, 1.0);
  
  static const EdgeInsets authenticationPadding = EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 97);
  static const EdgeInsets homeScreenPadding = EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0);

  static const TextStyle heading = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: textBoxColorMain
  );

  static const TextStyle textBox1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: textBoxColor1
  );

  static const TextStyle textBox2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: textBoxColor2
  );

  static const TextStyle textBoxMain = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: textBoxColorMain
  );
}