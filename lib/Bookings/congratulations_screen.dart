import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';


import 'package:flutter/material.dart';

import 'on_board_screen.dart';

class Congratulations extends StatefulWidget {
  @override
  _CongratulationsState createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    double height = displayHeight(context);
    double width = displayWidth(context);
    return new Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/congratulations.jpg'), fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          padding(10.0, 5.0),
          Align(
            alignment: Alignment.centerLeft,
                      child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          Spacer(),
          bookButton(),
          padding(2.0, 4.0),
          Text('Back to search', style: myStyle(14.0, Colors.grey)),
          SizedBox(height: height * .046,),
        ],
      ),
    );
  }



  bookButton() {
    return Container(
        decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.all(Radius.circular(35.0))),
        height: 60.0,
        width: MediaQuery.of(context).size.width * 0.73,
        child: FlatButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => CafeBookingOnboard()));
            },
            child: Text("Book your cafe",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                ))));
  }
}
