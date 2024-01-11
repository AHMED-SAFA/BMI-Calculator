import 'dart:math';

class Calc {
  final int weight, height;
  double bmi = 0;

  Calc({required this.weight, required this.height});

  String getValue() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String bmiresult() {
    getValue(); // Call getValue to update bmi before using it
    if (bmi < 18.5)
      return "underweight";
    else if (bmi >= 18.5 && bmi <= 24.9)
      return "healthy range";
    else if (bmi >= 25 && bmi <= 29.9)
      return "overweight";
    else if (bmi >= 30 && bmi <= 39.9)
      return "obesity";
    return "Fatal";
  }

  String commmnts() {
    getValue(); // Call getValue to update bmi before using it
    if (bmi < 18.5)
      return "eat more";
    else if (bmi >= 18.5 && bmi <= 24.9)
      return "All ok";
    else if (bmi >= 25 && bmi <= 29.9)
      return "High eater";
    else if (bmi >= 30 && bmi <= 39.9)
      return "Please stop eating";
    return "Fatal";
  }
}