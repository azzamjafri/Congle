import 'package:congle/Authentication/verify_otp.dart';
import 'package:congle/colors.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            padding(32.0, 32.0),
            Center(
              child: Container(
                height: 250.0,
                child: Image.asset('assets/phone_girl_verification.jpg'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                child: Text(
                  "Verification",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ttnorms',
                      fontSize: 33.0,
                      letterSpacing: 0.56),
                )),
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black87, fontSize: 13.0),
                    children: [
                  TextSpan(
                      text: "We will send you a ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.5,
                        fontFamily: 'ttnorms',
                      )),
                  TextSpan(
                      text: "One Time Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
                      text: "on your phone number",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.5,
                        fontFamily: 'ttnorms',
                      )),
                ])),
            padding(20.0, 20.0),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              child: TextFormField(
                controller: phoneController,
                enableInteractiveSelection: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  // fillColor: Colors.grey[200],
                  
                  hoverColor: Colors.white,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                      
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: RichText(
                      text: TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 13.0),
                          children: [
                            TextSpan(
                                text: "+91 ",
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontSize: 14.5,
                                  fontFamily: 'ttnorms',
                                )),
                            TextSpan(
                                text: " | ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17.0,
                                  fontFamily: 'ttnorms',
                                )),
                          ]),
                    ),
                  ),
                ),
                validator: (value) =>
                    value.length != 10 ? 'Incorrect number entered' : null,
              ),
            ),
            padding(15.0, 15.0),
            Container(
                decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                height: 43.0,
                width: MediaQuery.of(context).size.width * .8,
                child: FlatButton(
                    onPressed: () {
                      // trysubmit(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => VerifyOTP()));
                    },
                    child: Text("Send Code",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                        )))),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }

  padding(top, bottom) {
    return Padding(padding: EdgeInsets.only(top: top, bottom: bottom));
  }
}
