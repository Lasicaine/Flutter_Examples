import 'dart:math';

class BMICalculator {
  int weight;
  int height; //in centimeters
  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow((height * 0.01), 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi < 16) {
      return 'LOW';
    } else if (_bmi < 23) {
      return 'NORMAL';
    } else {
      return 'HIGH';
    }
  }

  String bmiInterpretation() {
    if (_bmi < 16) {
      return 'Your BMI is low. Try to eat more.';
    } else if (_bmi < 23) {
      return 'You\'ve perfectly good BMI. Great job!';
    } else {
      return 'Your BMI is high. Exercise more.';
    }
  }
}
