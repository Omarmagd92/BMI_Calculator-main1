  import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../whatsmean.dart';
import '../../whatsmean_arabic.dart';

// ignore: must_be_immutable
class BMIResultScreen extends StatelessWidget {
  final bool isMAle;
  final int result;
   final int age;

  const BMIResultScreen({Key? key, required this.isMAle, required this.result, required this.age}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI Result",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: kfont,
                color: kTextColor),
            textAlign: TextAlign.center,
          ),
          foregroundColor: kTextColor,
          backgroundColor: ksecandColor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender: ${isMAle ? 'Male': 'female'}' ,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Your BMI:$result ',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Age:$age ',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 120,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ksecandColor,
                  borderRadius: BorderRadius.circular(35),
                ),
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  height: 50.0,
                  child: Text(
                    "What's Mean ?".toUpperCase(),
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: kfont,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Whatsmean())));
                  },
                ),
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: ksecandColor,
                  borderRadius: BorderRadius.circular(35),
                ),
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  height: 50.0,
                  child: Text(
                    "ماذا يعني ؟".toUpperCase(),
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: kfont,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Whatsmean_arabic())));
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
