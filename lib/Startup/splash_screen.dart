import 'dart:async';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Startup/startup_page.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => StartUpPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkColor,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset('assets/icons/logo.png', fit: BoxFit.contain,),
              ),
            ),

            Spacer(),
            Text(
              "copyright ©congle 2020. AAll right reserve to congle pvt. ltd.",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'ttnorms', fontSize: 10.5),
            ),
            padding(5.0, 2.0),
          ],
        ),
      ),
    );
  }
}
