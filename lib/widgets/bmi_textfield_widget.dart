import 'package:flutter/material.dart';

class BmiTextFieldWidget extends StatelessWidget {

  final String label;
  final TextEditingController textEditingController;

  BmiTextFieldWidget({this.label, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(label),
          ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 100.0,
          ),
            child:TextField(
              controller: textEditingController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

