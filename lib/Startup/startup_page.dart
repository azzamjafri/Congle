import 'package:congle/Authentication/signin.dart';
import 'package:congle/colors.dart';
import 'package:flutter/material.dart';

class StartUpPage extends StatefulWidget {
  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    color: pinkColor,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Image.asset('assets/logo.png')),
            ),
            Text("CONGLE",
                style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'ttnorms',
                    color: Colors.white,
                    // color: Colors.grey[200],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
            Padding(padding: EdgeInsets.all(50.0)),
            Container(
              height: 35.0,
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.pink[50],
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: GestureDetector(
                onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => SignIn())),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: pinkColor,
                          fontFamily: 'ttnorms',
                          fontSize: 15.5),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: pinkColor,
                      size: 17.0,
                    ),
                  ],
                )),
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              height: 35.0,
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up With Google",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ttnorms',
                        fontSize: 15.5),
                  ),
                ],
              )),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              height: 35.0,
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent[700],
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up With Facebook",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ttnorms',
                        fontSize: 15.5),
                  ),
                ],
              )),
            ),
            Padding(padding: EdgeInsets.all(2.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New to congle ?  ",
                    style: TextStyle(color: Colors.white, fontSize: 11.0)),
                Text(
                  "Create an account",
                  style: TextStyle(color: Colors.pink, fontSize: 13.0),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 42.0, bottom: 43.0),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "copyright ©congle 2020. AAll right reserve to congle pvt. ltd.",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'ttnorms', fontSize: 10.5),
              ),
            ),
            Padding(padding: EdgeInsets.all(2.0)),
          ],
        ),
      ),
    );
  }
}
