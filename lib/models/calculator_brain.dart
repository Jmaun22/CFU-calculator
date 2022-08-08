import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {required this.colonies,
      required this.tdf,
      required this.culture_plated});

  final int colonies;
  final double tdf;
  final double culture_plated;

  double _cfu = 0;

  String calculatorCFU() {
    _cfu = colonies * tdf / culture_plated;

    return _cfu.toStringAsFixed(2);
  }


}
