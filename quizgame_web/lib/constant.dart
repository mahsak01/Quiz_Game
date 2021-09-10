import 'package:flutter/material.dart';

import 'models/User.dart';
const GreenColor = Color(0xFF6AC259);
const GreenColorLight = Color(0xffd9fbe3);
const RedColorLight = Color(0xfffed8d8);
const RedColor = Color(0xFFE92E30);
Color greenColor= Color(0xff10E3CA);
Color greenLightColor= Color(0xffB5F6EF);
Color grayColor= Color(0xff707070);
Color grayLightColor= Color(0xffc6c6c6);
Color whiteColor=Colors.white;
const BlackColor = Color(0xFF101010);
const PrimaryGradient = LinearGradient(
  colors: [Color(0xFF52ffd7), Color(0xFF10e3ca)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
User user=User(0, "Mahsa");
List data = [
  {
    "id": 1,
    "question":
    "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer": 2,
  },
];

