import 'package:flutter/material.dart';

const SecondColor= Color(0xff45474b);
const WhiteColor = Color(0xFFffffff);
const GreenColor = Color(0xFF6AC259);
const RedColor = Color(0xFFE92E30);
const GrayColor = Color(0xFFBBBBBB);
const BlackColor = Color(0xFF101010);
const PrimaryGradient = LinearGradient(
  colors: [Color(0xFF52ffd7), Color(0xFF10e3ca)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;


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
    "answe_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer": 2,
  },
];