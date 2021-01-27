import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderTileWidget extends StatefulWidget {

  @override
  _GenderTileWidgetState createState() => _GenderTileWidgetState();
}

enum Gender {
  Male,
  Female
}

class _GenderTileWidgetState extends State<GenderTileWidget> {

  Gender gender;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                gender = Gender.Male;
              });
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color:  (gender == Gender.Male) ? Theme.of(context).toggleableActiveColor : Theme.of(context).unselectedWidgetColor,
                  borderRadius: BorderRadius.circular(20.0)
              ),
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.mars, size: 50.0, color: Colors.grey[300],),
                  SizedBox(height: 10.0,),
                  Text('Male', style: TextStyle(fontSize: 15.0, color: Colors.grey[300]),),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                gender = Gender.Female;
              });
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: (gender == Gender.Female) ? Theme.of(context).toggleableActiveColor : Theme.of(context).unselectedWidgetColor,
                  borderRadius: BorderRadius.circular(20.0)
              ),
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.venus, size: 50.0, color: Colors.grey[300],),
                  SizedBox(height: 10.0,),
                  Text('Female', style: TextStyle(fontSize: 15.0, color: Colors.grey[300]),),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

