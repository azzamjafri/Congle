import 'dart:async';

import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/IntroPage/user_info_about.dart';

import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Timer _timer;
  int _currentPage = 0;
  final pageView = PageController(initialPage: 0);
  final pageViewMain = PageController(initialPage: 0);

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 40), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      pageView.animateToPage(_currentPage,
          duration: Duration(milliseconds: 450), curve: Curves.easeIn);
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: getBody(),
      backgroundColor: Colors.pink[50],
    );
  }

  getBody() {
    return PageIndicatorContainer(
      child: PageView(
        controller: pageView,
        children: [
          getPage1(),
          getPage2(),
          getPage3(),
        ],
      ),
      length: 3,
      shape: IndicatorShape.circle(size: 18.0),
      align: IndicatorAlign.bottom,
      padding: EdgeInsets.only(bottom: 50.0),
      indicatorColor: Colors.white,
      indicatorSelectorColor: pinkColor,
    );
  }

  getPage3() {
    return Stack(
      children: [
        // Positioned(
        //     top: 30.0,
        //     left: 30.0,
        //     child: IconButton(
        //         icon: Icon(Icons.arrow_back),
        //         onPressed: () {
        //           Navigator.pop(context);
        //         })),
        Align(
          alignment: Alignment(0.0, -0.6),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.0,
            child: Image.asset(
              // "assets/intro3.jpg",
              "assets/tab3.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .55),
          child: Text(
            "Book your table",
            style: style(27.5),
          ),
        ),
        Align(
          alignment: Alignment(0, .62),
          child: Text(
            "Book a table @ your nearby cafes and restaurants",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.5,
              fontFamily: 'ttnorms',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => UserInfoAbout()));
          },
          child: Align(
            alignment: Alignment(.65, .90),
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.5,
                fontFamily: 'ttnorms',
              ),
            ),
          ),
        ),
      ],
    );
  }

  getPage2() {
    return Stack(
      children: [
        // Positioned(
        //     top: 30.0,
        //     left: 30.0,
        //     child: IconButton(
        //         icon: Icon(Icons.arrow_back),
        //         onPressed: () {
        //           Navigator.pop(context);
        //         })),
        Align(
          alignment: Alignment(0.0, -0.5),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.0,
            child: Image.asset(
              // "assets/intro2.jpg",
              "assets/tab2.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .55),
          child: Text(
            "Request Them For Date",
            style: style(27.5),
            
          ),
        ),
        Align(
          alignment: Alignment(0, .65),
          child: Text(
            "Request the one you like for a real date at the cafes near you. ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.5,
              fontFamily: 'ttnorms',
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .72),
          child: Text(
            " Your date has only 24 hrs to accept or reject the offer.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.5,
              fontFamily: 'ttnorms',
            ),
          ),
        ),
        Align(
          alignment: Alignment(.6, .90),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => UserInfoAbout()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.5,
                fontFamily: 'ttnorms',
              ),
            ),
          ),
        ),
      ],
    );
  }

  getPage1() {
    return Stack(
      children: [
        // Positioned(
        //     top: 30.0,
        //     left: 30.0,
        //     child: IconButton(
        //         icon: Icon(Icons.arrow_back),
        //         onPressed: () => Navigator.pop(context))),
        Align(
          alignment: Alignment(0.0, -0.6),
          child: Container(
            // color: pinkColor,
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.0,
            child: Image.asset(
              // "assets/intro1.jpg",
              "assets/tab1.png",
              
              scale: 0.8,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .55),
          child: Text(
            "Find Your Special Someone",
            style: style(25.5),
          ),
        ),
        Align(
          alignment: Alignment(0, .62),
          child: Text(
            "Find online singles near your location",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.5,
              fontFamily: 'ttnorms',
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .67),
          child: Text(
            " in just a single click",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.5,
              fontFamily: 'ttnorms',
            ),
          ),
        ),
        Align(
          alignment: Alignment(.6, .90),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => UserInfoAbout()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15.5,
                fontFamily: 'ttnorms',
              ),
            ),
          ),
        ),
      ],
    );
  }

  style(size, [color = Colors.black]) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
      fontFamily: 'ttnorms',
    );
  }
}
