class CalorieCalculator {
  CalorieCalculator({this.height, this.weight, this.age});

  final int height;
  final int weight;
  final int age;

  String calculateBMR() {
    double bmr = 66.5 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
    return bmr.toStringAsFixed(1);
  }
}
