import 'dart:ui';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Dates/user_details.dart';
import 'package:flutter/material.dart';

class UpcomingDates extends StatefulWidget {
  @override
  _UpcomingDatesState createState() => _UpcomingDatesState();
}

class _UpcomingDatesState extends State<UpcomingDates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          // for (int i = 0; i < 5; i++) getChatCard(),
          listOfPosts()
        ],
      ),
    );
  }

  divider(c, w, t) {
    return Container(
        alignment: Alignment.centerRight,
        width: MediaQuery.of(context).size.width - w,
        child: Align(
          alignment: Alignment.centerRight,
          child: Divider(
            thickness: t,
            color: c,
          ),
        ));
  }

  listOfPosts() {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(20.0),
      itemBuilder: (BuildContext context, int position) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(context, new MaterialPageRoute(builder: (context) => ChatBox('1', 'Azzam')));
                Navigator.push(context, new MaterialPageRoute(builder: (context) => UserDetails()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 65.0,
                    width: 65.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        image: DecorationImage(
                            image: AssetImage('assets/profilepic.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  padding(0.0, 0.0, 15.0, 10.0),
                  Column(
                    children: [
                      new Text(
                        "Adrianne",
                        style: myStyle(16.0, Colors.black, true),
                      ),
                      padding(5.0, 0.0, 10.0, 10.0),
                      new Text(
                        "  22, Lawyer",
                        style: new TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey[500],
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text("3 hours", style: myStyle(10.0, Colors.grey, true)),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: divider(Colors.grey[300], 120.0, 0.80),
            ),
            // divider(Colors.grey[400], 120.0, 0.85),
          ],
        );
      },
    );
  }

  void _showOnTapMessage(BuildContext context, String message) {
    var alert = new AlertDialog(
      title: new Text("App"),
      content: new Text(message),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("OK"))
      ],
    );
    showDialog(context: context, builder: (context) => alert);
  }
}
