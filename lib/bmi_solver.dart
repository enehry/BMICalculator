import 'dart:math';

class BmiSolver{

  double _bmi;

  BmiSolver({weight, height}){
    double h =  double.parse(height);
    double w = double.parse(weight);
    _bmi =  w/pow(h, 2);
  }


  String get bmi => _bmi.toStringAsFixed(0);

  String getResult(){
    if(_bmi >= 25) return 'OVERWEIGHT';
    else if(_bmi > 18.5) return 'NORMAL';
    else return 'UNDERWEIGHT';
  }

  String getInterpretation(){
    if(_bmi >= 25) return 'You have a higher than a normal body weight. try to exercise more.';
    else if(_bmi > 18.5) return 'You have a normal body weight. Good Job!';
    else return 'You have a lower than normal body weight. You can eat a bit more';
  }

}