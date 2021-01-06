import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'dart:math' as math;
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
    return new Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        padding(height*.02, height*.02),
        Text('Congratulations', style: myStyle(height*.055, Colors.black, true)),
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
          child: Text(
            'Mutual sympathy. Do not waste time, book your place to meet now.',
            style: myStyle(15.0, Colors.grey),
          ),
        ),
        padding(height*.03, height*.03),
        Container(
          height: height / 2.2,
          width: width ,
          child: cards(),
        ),
        Spacer(),
        bookButton(),
        padding(5.0, 5.0),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child:
              Text('Back to search', style: myStyle(14.0, Colors.grey, false)),
        ),
        padding(8.0, 5.0),
      ],
    );
  }

  cards() {
    return Stack(
      children: [

        Positioned(
          left: displayWidth(context) / 10,
          // top: displayHeight(context) / 2,
          child: Transform.rotate(
            angle: -math.pi / 12,
                    child: Container(
              height: MediaQuery.of(context).size.height / 3.0,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/profilepic.jpg'), fit: BoxFit.fill),
                
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
        ),

        Positioned(
          right: displayWidth(context) / 7,
          // top: displayHeight(context) / 2,
          child: Transform.rotate(
            angle: math.pi / 9,
                    child: Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width / 2.3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/girl.jpg'), fit: BoxFit.fill),
                border: Border.all(color: pinkColor, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            ),
          ),
        ),
      ],
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
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => CafeBookingOnboard()));
            },
            child: Text("Book your cafe",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                ))));
  }
}
