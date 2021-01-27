import 'package:bmi_calculator/bmi_solver.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/bmi_textfield_widget.dart';
import 'package:bmi_calculator/widgets/gender_tile_widget.dart';
import 'package:flutter/material.dart';


TextEditingController height = TextEditingController();
TextEditingController weight = TextEditingController();

class HomeScreen extends StatelessWidget{

  final Function changeTheme;
  final bool isDark;

  HomeScreen({this.changeTheme, this.isDark});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('BMI Calculator'),
            Switch(
              value: isDark,
              onChanged: changeTheme,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GenderTileWidget(),
            BmiTextFieldWidget(
              label: 'Height(m)',
              textEditingController: height,
            ),
            BmiTextFieldWidget(
              label: 'Weight(kg)',
              textEditingController: weight,
            ),
            BmiTextFieldWidget(
              label: '       Age       ',
            ),
            SizedBox(height: 100.0,),
            OutlineButton(
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text('Calculate Your BMI'),
                onPressed: () {
                    print(height.text);
                    print(weight.text);
                    BmiSolver bmiSolver = BmiSolver(weight: weight.text, height: height.text);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen(
                      bmi: bmiSolver.bmi,
                      result: bmiSolver.getResult(),
                      interpretation: bmiSolver.getInterpretation(),
                    )));
                })
          ],
        ),
      ),
    );
  }
}

