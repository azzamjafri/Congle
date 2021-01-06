import 'package:carousel_slider/carousel_slider.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/BookCafe/confirm_booking.dart';
import 'package:congle/BottomAppBar/bottom_app_bar.dart';
import 'package:congle/HomePage/home_page.dart';

import 'package:flutter/material.dart';

class SelectTime extends StatefulWidget {
  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  bool isFavourite = false;

  int steps;
  int count = 1;
  int image_count;
  CarouselController buttonCarouselController = CarouselController();

  final key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    steps = 2;
    image_count = 3;
    super.initState();
  }

  final carouselController = PageController();

  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);

    return new Scaffold(
      key: key,
      backgroundColor: Colors.pink[50],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: height / 12 + 6,
        width: height / 12 + 6,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Image.asset('assets/icons/logo.png'),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Stack(
          children: <Widget>[
            imageCarousel(),
            Positioned(
              child: getBody(),
              top: MediaQuery.of(context).size.height / 3.0,
            ),
            Positioned(
              child: back(),
              top: 50.0,
            ),
          ],
        ),
      ),
    );
  }

  getBody() {
    return Card(
      elevation: 15.0,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
          child: columnContents(),
        ),
      ),
    );
  }

  columnContents() {
    double h = displayHeight(context);

    return SingleChildScrollView(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            '6/10 table available',
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          padding(h * .005, h * .005),
          Container(
            height: 6.0,
            width: 70.0,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
          ),
          padding(h * .006, h * .005),
          Text("The Brunch", style: myStyle(25.0, Colors.black, true)),
          padding(h * .002, 0.0),
          Text("18 Chiltern St, London",
              style: myStyle(17.0, Colors.black, false)),
          padding(h * .0098, h * .0098),
          new Text(
            'Date 01/01/2021',
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          padding(h * .01, h * .01),
          Align(
            alignment: Alignment.centerLeft,
            child: new Text(
              'Mayank is free today from',
              style: new TextStyle(
                fontSize: 15.4,
                color: Colors.black,
              ),
            ),
          ),
          padding(h * .005, h * .005),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  slots('03:00', Colors.grey),
                  slots('08:00', Colors.grey),
                  slots('09:30', Colors.grey),
                ],
              ),
            ],
          ),
          padding(h * .007, h * .007),
          Align(
            alignment: Alignment.centerLeft,
            child: new Text(
              'Select your time of booking',
              style: new TextStyle(
                fontSize: 15.4,
                color: Colors.black,
              ),
            ),
          ),
          padding(h * .005, h * .005),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  slots('03:00', pinkColor),
                  slots('08:00', pinkColor),
                  slots('09:30', pinkColor),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  slots('10:00', pinkColor),
                  slots('11:00', pinkColor),
                  slots('11:30', pinkColor),
                ],
              ),
            ],
          ),
          padding(h * .02, h * .02),
          Hero(
            tag: 'reserve table',
            child: Container(
              alignment: Alignment.center,
              width: displayWidth(context) / 2.0,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ConfirmBooking()));
                  },
                  color: Colors.white,
                  shape: StadiumBorder(
                      side: BorderSide(
                          color: pinkColor,
                          style: BorderStyle.solid,
                          width: 2.0)),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.event_seat,
                          color: pinkColor,
                        ),
                        padding(0.0, 0.0, 5.0, 5.0),
                        Text(
                          "RESERVE TABLE",
                          style: myStyle(14.0, pinkColor, true),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: h * .18,
          ),
        ],
      ),
    );
  }

  slots(String tag, Color color, [double size = 12.0]) {
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
              border: Border.all(color: color),
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          child: Center(
            child: Text(
              "$tag AM",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: temp ? Colors.white : color,
                  // color: pinkColor,
                  fontSize: size),
            ),
          ),
        ),
      ),
    );
  }

  back() {
    return new Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 10.0)),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 1.8)),
      ],
    );
  }

  imageCarousel() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      child: CarouselSlider.builder(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 2.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1.0,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int itemIndex) => Container(
            height: MediaQuery.of(context).size.height / 2.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/bookings/r1.jpg',
              fit: BoxFit.fill,
            )),
      ),
    );
  }

  blackText(String txt, [double size = 15.1]) {
    return new Text('$txt', style: new TextStyle(fontWeight: FontWeight.w500));
  }

  redText(String txt, [double size = 15.0]) {
    return new Text(
      "$txt",
      style: TextStyle(
          color: pinkColor, fontSize: size, fontWeight: FontWeight.w400),
    );
  }
}
