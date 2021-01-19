import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const kActiveColor = Color(0xFF1D1E33);
const kInactiveColor = Color(0xFF111328);

enum Gender { male, female }

const kTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const kBMIResultTextStyle = TextStyle(color: Colors.green, fontSize: 18.0, fontWeight: FontWeight.bold);
const kBMIResultNumberTextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
const kBMIResultInterpretationTextStyle = TextStyle(color: Color(0xFF8D8E98), fontSize: 20.0);
