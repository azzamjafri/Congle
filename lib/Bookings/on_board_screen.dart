import 'dart:async';

import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/BookCafe/cafehomepage.dart';
import 'package:congle/IntroPage/user_info_about.dart';

import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class CafeBookingOnboard extends StatefulWidget {
  @override
  _CafeBookingOnboardState createState() => _CafeBookingOnboardState();
}

class _CafeBookingOnboardState extends State<CafeBookingOnboard> {
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
      // backgroundColor: Colors.pink[50],
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

  getPage1() {
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
              "assets/bookings/onboard1.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .68),
          child: Text(
            "Reserve your table",
            style: style(27.5),
          ),
        ),
        
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => CafeHomePage()));
          },
          child: Align(
            alignment: Alignment(.65, .90),
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

  getPage2() {
    return Stack(
      children: [
        
        Align(
          alignment: Alignment(0.0, -0.5),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.0,
            child: Image.asset(
              "assets/bookings/onboard2.jpg",
              fit: BoxFit.cover,
              
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .68),
          child: Text(
            "Find restaurants near you",
            style: style(27.5),
          ),
        ),
        
        
        Align(
          alignment: Alignment(.6, .90),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => CafeHomePage()));
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

  getPage3() {
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
              "assets/bookings/onboard3.jpg",
              
              scale: 0.8,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, .68),
          child: Text(
            "Discover special offers",
            style: style(25.5),
          ),
        ),
        
        Align(
          alignment: Alignment(.6, .90),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => CafeHomePage()));
            },
            child: Text(
              "Get Started",
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
