import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calcbutton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: 'AC',
                  fillColor: 0xFF6C807F,
                ),
                Calcbutton(
                  text: 'C',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                Calcbutton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                Calcbutton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '7',
                ),
                Calcbutton(
                  text: '8',
                ),
                Calcbutton(
                  text: '9',

                ),
                Calcbutton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '4',

                ),
                Calcbutton(
                  text: '5',
                ),
                Calcbutton(
                  text: '6',

                ),
                Calcbutton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '1',

                ),
                Calcbutton(
                  text: '2',

                ),
                Calcbutton(
                  text: '3',

                ),
                Calcbutton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calcbutton(
                  text: '.',
                  fillColor: 0xFF6C807F,
                ),
                Calcbutton(
                  text: '0',

                ),
                Calcbutton(
                  text: '00',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                Calcbutton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
