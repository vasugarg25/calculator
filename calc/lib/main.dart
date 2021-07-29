import 'dart:math';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calcbutton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  // This widget is the root of your application.


  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String history="";
  String expression="";
  void numClick(String text)
  {
    setState(() {
      expression+=text;
    });
  }
  void allClear(String text)
  {
    setState(() {
      expression="";
      history="";
    });
  }
  void Clear(String text)
  {
    setState(() {
      expression="";
    });
  }
  void solve(String text)
  {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      history=expression;
      expression=eval.toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                history,

                style: (TextStyle(fontSize: 25,color: Color(0xFF545F61)))

              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                expression,
                style: (TextStyle(fontSize: 50,color: Colors.white)),
              ),
              alignment: Alignment(1, 1),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: 'AC',
                  callback: allClear,
                  fillColor: 0xFF6C807F,
                ),
                Calcbutton(
                  text: 'C',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: Clear,
                ),
                Calcbutton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
                Calcbutton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '7',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '8',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '9',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '4',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '5',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '6',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '1',
                  callback: numClick,
                ),
                Calcbutton(
                  text: '2',callback: numClick,
                ),
                Calcbutton(
                  text: '3',callback: numClick,
                ),
                Calcbutton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '.',callback: numClick,
                  fillColor: 0xFF6C807F,
                ),
                Calcbutton(
                  text: '0',callback: numClick,
                ),
                Calcbutton(
                  text: '00',
                  fillColor: 0xFFFFFFFF,callback: numClick,
                  textColor: 0xFF65BDAC,
                ),
                Calcbutton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,callback: solve,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
