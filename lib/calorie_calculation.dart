class CalorieCalculator {
  CalorieCalculator({this.height, this.weight, this.age});

  final int height;
  final int weight;
  final int age;

  double _bmr;
  double _tdee;

  double calculateBMR() {
    double _bmr = 66.5 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
    return _bmr;
  }

  String calculateDailyTDEE() {
    double _tdee =
        (66.5 + (13.75 * weight) + (5.003 * height) - (6.755 * age)) * 1.2;
    return _tdee.toStringAsFixed(0);
  }

  String calculateWeeklyTDEE() {
    double weeklyTDEE = _tdee * 7;
    return weeklyTDEE.toStringAsFixed(0);
  }
}
