import 'package:bmi_calculator/screens/home_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  bool isDark = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: (isDark) ?
      ThemeData.dark().copyWith(
        unselectedWidgetColor: Colors.black38,
        toggleableActiveColor: Colors.grey[700],
      ) :
      ThemeData.light().copyWith(
        primaryColor: Colors.blue[900],
        toggleableActiveColor: Colors.blue[900],
      ) ,
      home: HomeScreen(
        changeTheme: (bool value) {
            setState(() {
              isDark = value;
            });
        },
        isDark: isDark,
      )
    );
  }
}

