import 'dart:math';

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../bmi_result_screen/bmi_result_screen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);


  @override
  _BmiCalculator createState() => _BmiCalculator();
}

// ignore: camel_case_types
class _BmiCalculator extends State<BmiCalculator> {
  bool isMale = true;
  double height=120;
  int weight=40;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, fontFamily: kfont,color: kTextColor),
          textAlign: TextAlign.center,
        ),
        foregroundColor: kTextColor,
        backgroundColor: ksecandColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale =true;
                        });

                      },

                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                           Image(
                             image: AssetImage('assets/images/male.png'),
                             height: 90,
                             width: 90,
                           )
                            ,
                            SizedBox(
                              height: 10,
                            ),
                            Text("Male",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color:isMale? Colors.blue: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale= false;
                        });

                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 90,
                              width: 90,
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Text("FEMALE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color:!isMale? Colors.blue: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey[400],
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("HEIGHT",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}',style: const TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
                        const SizedBox(width: 5,),
                        const Text("CM",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                      ],
                    ),
                    Slider(
                        inactiveColor: kBackgroundColor,
                        activeColor: ksecandColor,
                        thumbColor: ksecandColor,
                        value: height,
                        max: 220.0,
                        min: 120,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  ],
                ),

              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                children: [
                  Expanded(
                    child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0,),
              color: Colors.grey[400],
              ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("WEIGHT",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text('$weight',style: const TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                                heroTag: ' weight-',
                                mini: true,
                              child: const Icon(Icons.remove,
                              ),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                                heroTag: ' weight+',
                                mini: true,
                                child: const Icon(Icons.add,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AGE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text('$age',style: const TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                                heroTag: 'age-',
                                mini: true,
                                child: const Icon(Icons.remove,
                                ),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                heroTag: 'age+',
                                mini: true,
                                child: const Icon(Icons.add,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 50,
            child: MaterialButton(onPressed: (){
              var result= weight/pow(height/100, 2);
              print(result);

              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => BMIResultScreen(
                  isMAle: isMale,
                  age:age, result: result.round(),
                ),
              ),
              );
            },
              child: const Text('CALCULATE', style: TextStyle(color: Colors.white),),

            ),
          ),
        ],
      ),

    );
  }
}
