import 'dart:ui';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Dates/user_details.dart';
import 'package:flutter/material.dart';

class RequestedDates extends StatefulWidget {
  @override
  _RequestedDatesState createState() => _RequestedDatesState();
}

class _RequestedDatesState extends State<RequestedDates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomSheet: getBottom(),
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
      itemCount: 6,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(20.0),
      itemBuilder: (BuildContext context, int position) {
        return Column(
          children: [
            Row(
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

  getBottom() {
    return Container(
      height: 120.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Container(
              height: 60.0,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                  color: pinkColor,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: FlatButton(
                  onPressed: () {
                    showDialog(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      Text("When are you free today ?",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            // letterSpacing: 2.0,
                          )),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  void showDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SizedBox.expand(
                child: Material(
                    type: MaterialType.transparency,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Select your time of booking",
                                style: myStyle(13.0, Colors.grey)),
                          ),
                        ),
                        padding(5.0, 5.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                slots('03:00 PM'),
                                slots('08:00 PM'),
                                slots('09:30 PM'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                slots('10:00 AM'),
                                slots('11:00 AM'),
                                slots('11:30 AM'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                slots('03:00 PM'),
                                slots('08:00 PM'),
                                slots('09:30 PM'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                slots('10:00 AM'),
                                slots('11:00 AM'),
                                slots('11:30 AM'),
                              ],
                            ),
                          ],
                        ),
                        padding(8.0, 8.0),
                        Container(
                            decoration: BoxDecoration(
                                color: pinkColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            height: 40,
                            width: 150,
                            child: FlatButton(
                                onPressed: () {
                                  Future.delayed(
                                      const Duration(microseconds: 4  ), () {
                                        Navigator.pop(context);
                                      });
                                },
                                child: Text("Done",
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 1.2,
                                    )))),
                      ],
                    ))),


          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  slots(String tag, [double size = 12.0]) {
    bool temp = false;
    return Padding(
      padding: EdgeInsets.fromLTRB(2.0, 4.0, 4.0, 1.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            // temp = !temp;
            if (temp)
              temp = false;
            else
              temp = true;
            print(temp.toString());
          });
        },
        child: Container(
          width: displayWidth(context) / 4.0,
          height: 34.0,
          decoration: BoxDecoration(
              color: temp ? pinkColor : Colors.transparent,
              // color: Colors.transparent,
              border: Border.all(color: pinkColor),
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          child: Center(
            child: Text(
              "$tag",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: temp ? Colors.white : pinkColor,
                  // color: pinkColor,
                  fontSize: size),
            ),
          ),
        ),
      ),
    );
  }
}
