import 'dart:async';

import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/IntroPage/intro_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyOTP extends StatefulWidget {
  @override
  _VerifyOTPState createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  TextEditingController digit1 = new TextEditingController();
  TextEditingController digit2 = new TextEditingController();
  TextEditingController digit3 = new TextEditingController();
  TextEditingController digit4 = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();

  Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    double width = displayWidth(context);
    return new Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 63.0, bottom: 8.0),
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 13.0),
                children: [
                  TextSpan(
                      text: "By continuing you agree to our ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.5,
                        fontFamily: 'ttnorms',
                      )),
                  TextSpan(
                      text: "Terms and Privacy Policy ",
                      style: TextStyle(
                        color: pinkColor,
                        fontSize: 11.0,
                        fontFamily: 'ttnorms',
                      )),
                ]),
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Container(
          height: height,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              padding(25.0, 25.0),
              Center(
                child: Container(
                  height: height * .4,
                  child: Image.asset('assets/otp_verification.jpg'),
                ),
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black87, fontSize: 13.0),
                      children: [
                    TextSpan(
                        text: "Please enter the ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.5,
                          fontFamily: 'ttnorms',
                        )),
                    TextSpan(
                        text: "OTP",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14.5,
                          fontFamily: 'ttnorms',
                        )),
                    TextSpan(
                        text: " sent to ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.5,
                          fontFamily: 'ttnorms',
                        )),
                  ])),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black87, fontSize: 13.0),
                      children: [
                    TextSpan(
                        text: "mobile number +91 xxxxxxxxxx",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.5,
                          fontFamily: 'ttnorms',
                        )),
                  ])),
              padding(20.0, 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      // textInputAction: TextInputAction.next,
                      controller: digit1,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        hoverColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[200]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8.0, right: 8.0)),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      controller: digit2,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        hoverColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[200]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8.0, right: 8.0)),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      controller: digit3,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        hoverColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[200]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8.0, right: 8.0)),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      // maxLength: 1,
                      controller: digit4,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        hoverColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[200]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                  ),
                ],
              ),
              padding(15.0),
              Text(
                "Expiring In 00:$_start ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,

                  // letterSpacing: 0.85,
                  fontFamily: 'ttnorms',
                ),
              ),

              FlatButton(
                  onPressed: () {},
                  splashColor: Colors.pink[200],
                  child: Text(
                    "RESEND CODE",
                    style: TextStyle(
                      color: pinkColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.85,
                      fontFamily: 'ttnorms',
                    ),
                  )),
              // padding(height / 22),
              Spacer(),
              Align(
                alignment: AlignmentDirectional.center,
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: pinkColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        height: 45.0,
                        width: MediaQuery.of(context).size.width * .8,
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => IntroPage()));
                            },
                            child: Text("Verify",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.6,
                                  fontFamily: 'ttnorms',
                                )))),
                    padding(5.0),
                    GestureDetector(
                      onTap: () {
                        showDialog(context);
                      },
                      child: Text("Change Mobile Number",
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontFamily: 'ttnorms',
                          )),
                    ),
                  ],
                ),
              ),
              padding(height * .02, height * .02),
            ],
          ),
        ),
      ),
    );
  }

  padding(top, [bottom = 0.0]) {
    return Padding(padding: EdgeInsets.only(top: top, bottom: bottom));
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
          alignment: Alignment.center,
          child: Container(
            height: 300,
            child: SizedBox.expand(
                child: Material(
                    type: MaterialType.transparency,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Confirm Phone number change"),
                        Padding(padding: EdgeInsets.all(22.0)),
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Material(
                            elevation: 5,
                            shape: StadiumBorder(),
                            child: TextFormField(
                              // key: __passwordkey,
                              controller: phoneNumber,
                              keyboardType: TextInputType.number,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  prefixIcon: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Icon(
                                      Icons.email,
                                      size: 35,
                                      color: Colors.black.withOpacity(.75),
                                    ),
                                  ),
                                  hintText: "Enter new Phone number"),

                              validator: (value) => value.length < 10
                                  ? 'Enter a valid number'
                                  : null,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15.0)),
                        Container(
                            decoration: BoxDecoration(
                                color: pinkColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            height: 40,
                            width: 150,
                            child: FlatButton(
                                onPressed: () {
                                  // reset();
                                  CustomDialog();
                                  Future.delayed(const Duration(seconds: 2),
                                      () {
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Reset",
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 1.2,
                                    )))),
                      ],
                    ))),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
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
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Mail Sent !"),
            content: new Text(
                "An email is sent to the entered email address, please follow the link there :) "),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
