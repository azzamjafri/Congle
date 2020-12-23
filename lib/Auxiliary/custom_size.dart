
import 'package:flutter/material.dart';


Size displaySize(BuildContext context) {
  //debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}
double displayHeight(BuildContext context) {
  //debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  //debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

TextStyle myStyle([size = 15.0, color = Colors.black, bold = false]) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontFamily: 'ttnorms',
    );
  }

  padding(top, bottom, [right = 0.0, left = 0.0]) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
    );
  }

/*
double hit = displayHeight(context);
double wid = displayWidth(context);
*/