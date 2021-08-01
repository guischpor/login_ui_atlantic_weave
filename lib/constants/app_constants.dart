import 'package:flutter/material.dart';

const Color COLOR_BUTTON_BLUE = Color(0xff175B9F);
const Color COLOR_BACKGROUND_INPUTFIELD = Color.fromRGBO(18, 18, 18, 6);
const Color COLOR_BORDER_INPUTFIELD = Color.fromRGBO(87, 87, 87, 6);
const Color COLOR_ICON_INPUTFIELD = Color.fromRGBO(255, 255, 255, 7);
const Color COLOR_TEXT_INPUTFIELD = Color(0xffA2A2A2);
const Color COLOR_TEXT_BUTTON = Color(0xffA2A2A2);
const Color COLOR_TEXT_NEW_ACCOUNT = Color(0xffF7F7F7);

const Gradient BACKGROUND_GRADIENTE_SCREEN = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(84, 84, 84, 0.4),
    Color.fromRGBO(0, 0, 0, 1),
  ],
  tileMode: TileMode.mirror,
);

const TextStyle titleLogin = TextStyle(
  fontSize: 19,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
