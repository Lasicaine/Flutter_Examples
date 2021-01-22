import 'dart:ui';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({@required this.bmi, @required this.bmiResult, @required this.bmiInterpretation});

  final String bmi;
  final String bmiResult;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ReusableCard(
                color: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(bmiResult, style: kBMIResultTextStyle),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(bmi, style: kBMIResultNumberTextStyle),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(bmiInterpretation, textAlign: TextAlign.center, style: kBMIResultInterpretationTextStyle)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: bottomContainerHeight,
                  color: Color(0xFFEB1555),
                  child: Center(
                      child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  )),
                ),
              ),
            )
          ],
        ));
  }
}
