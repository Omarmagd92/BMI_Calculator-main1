// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../constants.dart';

class Whatsmean extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35))),
        centerTitle: true,
        title: Text(
          "What's Mean",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, fontFamily: kfont,color: kTextColor),
          textAlign: TextAlign.center,
        ),
        foregroundColor: kTextColor,
        backgroundColor: ksecandColor,
      ),
      
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'BMI ranges :'.toUpperCase(),
              style: TextStyle(fontSize: 40,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.center,
              ),
              SizedBox(height: 15,),
              Text(
              'For most adults, an ideal BMI is in the 18.5 to 24.9 range.',
              style: TextStyle(fontSize: 20,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
              'For children and young people aged 2 to 18, the BMI calculation takes into account age and gender as well as height and weight.',
              style: TextStyle(fontSize: 20,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
              'If your BMI is:'.toUpperCase(),
              style: TextStyle(fontSize: 20,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.left,
              ),
              SizedBox(height: 8,),
              Text(
              "1- below 18.5 – you're in the underweight range",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.center,
              ),
              SizedBox(height: 8,),
              Text(
              "2- between 18.5 and 24.9 – you're in the healthy weight range",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.center,
              ),
              SizedBox(height: 8,),
              Text(
              "3- between 25 and 29.9 – you're in the overweight range",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.center,
              ),
              SizedBox(height: 8,),
              Text(
              "4- between 30 and 39.9 – you're in the obese range",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
