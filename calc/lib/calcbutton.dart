import 'package:flutter/material.dart';

class Calcbutton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callback;
  const Calcbutton({
    Key key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            onPressed: () {
              callback(text);
            },
            color:fillColor!=null?Color(fillColor):null,
            textColor: Color(textColor),

            child: Text(
              text,
              style: TextStyle(fontSize: 22),
            )),
      ),
    );
  }
}
