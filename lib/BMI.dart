import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BmiCalc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return BmiState();
  }

}
class BmiState extends State<BmiCalc>{

  final height=TextEditingController();
  final weight=TextEditingController();
  var result=0.0;
  var msg="";

  var _value = 1.0;


  //double _cal;// new variable defined for result

  void calcBMI(){
    setState((){
      double h = double.parse(height.text);
      double w = double.parse(weight.text);
      // We dived height by 100 because we are taking the height in centimeter
      // and formula takes height in meter.
      var weight1 = w * 10000;
      var height1 = h * 30.48;
      double heightSquare = height1 * height1;
      result = weight1/ heightSquare;
      if(result<=18.5){
        msg="you are Underweight";
      }
      else if(result>=18.5 && result<=24.9){
        msg="you are Normal";
      }
      else if(result>=25 && result<=29.9) {
        msg = "you are Overweight";
      }
      else
        msg="Obesity";
      print(result);
      print(msg);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[350],
        child: Column(
          children: [
            Container(
              // color: Colors.lime,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your height in feet....',
                  //onChanged: (text) {
                  //  print("First text field: $text");
                  //  },
                  //  controller: myController,
                ),
                controller: height,
              ),
              alignment: Alignment.center,
            ),
            Container(
              // color: Colors.lime,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your weight....',
                  //onChanged: (text) {
                  //  print("First text field: $text");
                  //  },
                  //  controller: myController,
                ),
                controller: weight,
              ),
              alignment: Alignment.center,
            ),
            RaisedButton(onPressed: calcBMI,child: Text("CALCULATE"),color: Colors.blue[400],),
            SizedBox(height: 25),
            Text( "Your BMI: $result",),
            Text("$msg"),
            // Container(
            //   child: Slider(
            //       value: _value.toDouble(),
            //       min: 1.0,
            //       max: 10.0,
            //       divisions: 10,
            //       activeColor: Colors.red,
            //       inactiveColor: Colors.black,
            //       label: 'Set a value',
            //       onChanged: (double newValue) {
            //         setState(() {
            //           _value = newValue.round() as double;
            //         });
            //       },
            //       semanticFormatterCallback: (double newValue) {
            //         return '${newValue.round()} dollars';
            //       }
            //   ),
            //
            //   // style: TextStyle(fontWeight: FontWeight.bold)
            // ),
          ],
        ),
      ),
    );
  }

}
