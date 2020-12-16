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
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
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
              "Expiring In 04:34 ",
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
            padding(height / 22),
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
                  Text("Change Mobile Number",
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 13.5,
                        fontFamily: 'ttnorms',
                      )),
                ],
              ),
            ),
            // Align(
            //   alignment: AlignmentDirectional.centerEnd,
            //   child: Transform.translate(
            //     offset: Offset(-width / 11, 0),
            //     child: Column(
            //       children: [
            //         Container(
            //             decoration: BoxDecoration(
            //                 color: pinkColor,
            //                 borderRadius:
            //                     BorderRadius.all(Radius.circular(30))),
            //             height: 45.0,
            //             width: MediaQuery.of(context).size.width * .8,
            //             child: FlatButton(
            //                 onPressed: () {
            //                   Navigator.push(
            //                       context,
            //                       new MaterialPageRoute(
            //                           builder: (context) => IntroPage()));
            //                 },
            //                 child: Text("Verify",
            //                     style: new TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 24.0,
            //                       fontWeight: FontWeight.bold,
            //                       letterSpacing: 0.6,
            //                       fontFamily: 'ttnorms',
            //                     )))),
            //         // padding(12.0),
            //         Text("Change Mobile Number",
            //             style: new TextStyle(
            //               color: Colors.black,
            //               fontSize: 13.5,
            //               fontFamily: 'ttnorms',
            //             )),
            //       ],
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }

  padding(top, [bottom = 0.0]) {
    return Padding(padding: EdgeInsets.only(top: top, bottom: bottom));
  }
}
