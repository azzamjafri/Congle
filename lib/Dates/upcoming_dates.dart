import 'dart:ui';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/BookCafe/confirm_booking.dart';

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

  listOfPosts() {
    double height = displayHeight(context);
    // double width = displayWidth(context);

    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 20.0),
      itemBuilder: (BuildContext context, int position) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ConfirmBooking()));
              },
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * .125,
                        width: height * .12,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/profilepic.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      padding(0.0, 0.0, 1.0, 1.0),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emma, 22",
                              style: myStyle(height * .034, Colors.black, true),
                            ),
                            padding(height * .0023, height * .0023),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  size: height * .029,
                                ),
                                padding(0.0, 0.0, 4.0, 4.0),
                                Text("The Brunch",
                                    style: myStyle(height * .022, Colors.black))
                              ],
                            ),
                            padding(height * .0032, height * .0032),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: height * .025,
                                    ),
                                    padding(0.0, 0.0, 1.0, 0.0),
                                    Text(
                                      '01/02/2020',
                                      style: myStyle(height * .0127),
                                    )
                                  ],
                                ),
                                padding(0.0, 0.0, 3.0, 3.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: height * .025,
                                    ),
                                    padding(0.0, 0.0, 1.0, 0.0),
                                    Text(
                                      '11:00 AM',
                                      style: myStyle(height * .0127),
                                    )
                                  ],
                                )
                              ],
                            ),
                            padding(height * .0045, height * .0045),
                            Center(
                              child: Text("18 Chiltern St, London",
                                  style: myStyle(
                                      height * .019, Colors.black, false)),
                            ),
                            padding(height * .012, height * .012),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: displayWidth(context) / 6.8,
                                    height: height * .035,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      // shape: StadiumBorder(),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: height * .020,
                                          ),
                                          padding(0.0, 0.0, 0.7, 0.0),
                                          Text(
                                            "Directions",
                                            style: myStyle(height * .012,
                                                Colors.white, true),
                                          )
                                        ],
                                      ),
                                    )),
                                padding(0.0, 0.0, 3.0, 3.0),

                                Container(
                                    width: displayWidth(context) / 6.2,
                                    height: height * .035,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.call,
                                            color: Colors.black,
                                            size: height * .020,
                                          ),
                                          padding(0.0, 0.0, 1.0, 0.0),
                                          Text(
                                            "CALL HOTEL",
                                            style: myStyle(height * .011,
                                                Colors.black, true),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      padding(0.0, 0.0, 1.0, 1.0),
                      Container(
                        height: height * .14,
                        width: height * .18,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/bookings/r2.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // divider(Colors.grey[400], 120.0, 0.85),
          ],
        );
      },
    );
  }
}
