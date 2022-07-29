// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import '../constants.dart';

class Whatsmean_arabic extends StatelessWidget {

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
          "ماذا يعني",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, fontFamily: kfont,color: kTextColor),
          textAlign: TextAlign.center,
        ),
        foregroundColor: kTextColor,
        backgroundColor: ksecandColor,
      ),
      
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              ': نطاق مؤشر كتلة الجسم'.toUpperCase(),
              style: TextStyle(fontSize: 35,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.center,
              ),
              SizedBox(height: 15,),
              Text(
              'بالنسبة لمعظم البالغين ، يتراوح مؤشر كتلة الجسم المثالي بين 18.5 و 24.9',
              style: TextStyle(fontSize: 20,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
              SizedBox(height: 15,),
              Text(
              'بالنسبة للأطفال والشباب الذين تتراوح أعمارهم بين 2 و 18 عامًا ، يأخذ حساب مؤشر كتلة الجسم في الاعتبار العمر والجنس وكذلك الطول والوزن',
              style: TextStyle(fontSize: 20,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
              SizedBox(height: 15,),
              Text(
              ': إذا كان مؤشر كتلة الجسم لديك هو',
              style: TextStyle(fontSize: 20,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
              SizedBox(height: 8,),
              Text(
              "أقل من 18.5 - كنت في نطاق نقص الوزن",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
              SizedBox(height: 8,),
              Text(
              "بين 18.5 و 24.9 - أنت في نطاق وزن صحي",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
              SizedBox(height: 8,),
              Text(
              "بين 25 و 29.9 - كنت في نطاق الوزن الزائد",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
              SizedBox(height: 8,),
              Text(
              "بين 30 و 39.9 - أنت في نطاق السمنة",
              style: TextStyle(fontSize: 17,fontFamily: kfont, fontWeight: FontWeight.bold,color: ksecandColor),
          textAlign: TextAlign.right,
              ),
          ],
        ),
      ),
    );
  }
}
