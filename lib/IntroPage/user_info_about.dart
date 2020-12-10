import 'package:congle/Authentication/verification_page.dart';
import 'package:congle/colors.dart';
import 'package:flutter/material.dart';

class UserInfoAbout extends StatefulWidget {
  @override
  _UserInfoAboutState createState() => _UserInfoAboutState();
}

class _UserInfoAboutState extends State<UserInfoAbout> {
  String currentText;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final key = new GlobalKey<ScaffoldState>();
  final formkey = GlobalKey<FormState>();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkColor,
      key: key,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                  top: MediaQuery.of(context).size.height / 6,
                  left: MediaQuery.of(context).size.width / 2 - 31,
                  
                  child: Container(
                    // margin: EdgeInsets.all(100.0),
                    height: 62.0,
                    width: 62.0,
                    child: Center(child: Icon(Icons.camera_enhance, size: 30.0, color: pinkColor,)),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 500.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      border: Border.all(
                          width: 3.0,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        padding(8.0),
                        Text(
                          "Tell Us About Yourself",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ttnorms',
                              fontSize: 20,
                              letterSpacing: 0.5),
                        ),
                        
                        padding(3.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 15.0, top: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              // key: __passwordkey,

                              controller: emailController,

                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  hoverColor: Colors.white,
                                  filled: true,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide(width: 4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 0),
                                    // child: Icon(
                                    //   Icons.person_outline,
                                    //   size: 35,
                                    //   color: Colors.pink.withOpacity(.75),
                                    // ),
                                  ),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                      fontSize: 12.0, color: pinkColor)),

                              validator: (value) => value.isEmpty
                                  ? 'Enter a valid email address'
                                  : null,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              // key: __passwordkey,
                              controller: passwordController,

                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  hoverColor: Colors.white,
                                  filled: true,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide(width: 4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 0),
                                    // child: Icon(
                                    //   Icons.lock,
                                    //   size: 35,
                                    //   color: Colors.pink.withOpacity(.75),
                                    // ),
                                  ),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                      fontSize: 12.0, color: pinkColor)),

                              validator: (value) => value.length < 8
                                  ? 'Password must be 8 characters long'
                                  : null,
                            ),
                          ),
                        ),
                        
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  padding(value) {
    return Padding(padding: EdgeInsets.all(value));
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
                        Text("Confirm Password Reset ?"),
                        Padding(padding: EdgeInsets.all(22.0)),
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Material(
                            elevation: 5,
                            shape: StadiumBorder(),
                            child: TextFormField(
                              // key: __passwordkey,
                              controller: emailController,
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
                                  hintText: "Enter Email Address"),

                              validator: (value) => value.isEmpty
                                  ? 'Enter a valid email address'
                                  : null,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15.0)),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            height: 40,
                            width: 150,
                            child: FlatButton(
                                onPressed: () {
                                  // reset();

                                  Future.delayed(const Duration(seconds: 12),
                                      () {
                                    CustomDialog();
                                  });

                                  // Navigator.pop(context);
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
