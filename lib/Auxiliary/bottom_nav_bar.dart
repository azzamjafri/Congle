import 'package:congle/Dates/dates.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.close, size: 35.0, ),
                // icon: Image.asset('assets/icons/remove.jpg'), 
                onPressed: () {}),
            Center(child: Text('Remove', style: myStyle())),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: 5.0, right: 3.5)),
        Column(
          children: [
            IconButton(
                icon: Image.asset('assets/icons/heart.png'), onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => Dates()));
                }),
            Center(child: Text(' Date ', style: myStyle())),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: 3.0, right: 3.0)),
        Column(
          children: [
            IconButton(
                icon: Image.asset('assets/icons/superdate.png'),
                onPressed: () {}),
            Center(child: Text('Super Date', style: myStyle())),
          ],
        ),
      ],
    );
  }

  myStyle([size = 15.0, color = Colors.grey, bold = false]) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontFamily: 'ttnorms',
    );
  }
}