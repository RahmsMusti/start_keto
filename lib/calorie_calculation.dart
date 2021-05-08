import 'package:start_keto/screens/input_page.dart';

class CalorieCalculator {
  CalorieCalculator(
      {this.height, this.weight, this.age, this.activityValue, this.gender});

  final int height;
  final int weight;
  final int age;
  final double activityValue;
  final Gender gender;

  double _bmr;
  double _tdee;
  double _weeklyTDEE;

  String calculateBMR() {
    gender == Gender.male
        ? _bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5
        : _bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    return _bmr.toStringAsFixed(0);
  }

  String calculateTDEE() {
    _tdee = _bmr * activityValue;
    return _tdee.toStringAsFixed(0);
  }

  String calculateWeeklyTDEE() {
    _weeklyTDEE = _tdee * 7;
    return _weeklyTDEE.toStringAsFixed(0);
  }
}
