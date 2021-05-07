class CalorieCalculator {
  CalorieCalculator({this.height, this.weight, this.age, this.activityValue});

  final int height;
  final int weight;
  final int age;
  final double activityValue;

  double _bmr;
  double _tdee;
  double _weeklyTDEE;

  //TODO:Add Gender to Calculations
  String calculateBMR() {
    _bmr = 66.5 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
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
