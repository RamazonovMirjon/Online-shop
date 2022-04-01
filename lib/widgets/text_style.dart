import 'package:flutter/material.dart';

Text myText({
  required String text,
  required double size,
  TextAlign align = TextAlign.center,
  Color color = Colors.white,
  FontWeight weight = FontWeight.normal,
}) =>
    Text(text,
        textAlign: align,
        style: TextStyle(
          color: color,
          fontFamily: "Raleway",
          fontWeight: weight,
          fontSize: size,
        ));
