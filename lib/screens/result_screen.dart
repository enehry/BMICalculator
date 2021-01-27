import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final String bmi;
  final String result;
  final String interpretation;

  ResultScreen({this.bmi, this.result, this.interpretation});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'BMI',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).toggleableActiveColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
            child: Column(
              children: [
                Text(
                  result,
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[300]),
                ),
                Text(
                  bmi,
                  style: TextStyle(
                      fontSize: 150.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[300]),
                ),
                Text(
                  interpretation,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0, color: Colors.grey[300]),
                ),
              ],
            ),
          ),
          SizedBox(height: 100.0,),
          OutlineButton(
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text('Re-Calculate Your BMI'),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ],
      ),
    );
  }
}
