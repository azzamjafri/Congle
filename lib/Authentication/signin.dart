import 'package:congle/Authentication/signup.dart';
import 'package:congle/Authentication/verification_page.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String currentText;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final key = new GlobalKey<ScaffoldState>();
  final formkey = GlobalKey<FormState>();

  // AuthResult authresult;
  bool loading = false;

  // final auth = FirebaseAuth.instance;
  // bool valid;

  // void submit(String email, String password, BuildContext ctx) async {
  //   try {
  //     setState(() {
  //       loading = true;
  //     });

  //     authresult = await auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     setState(() {
  //       loading = false;
  //     });
  //     user = authresult.user;
  //     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (context) => HomePage()),
  //         (route) => false);
  //   } on PlatformException catch (error) {
  //     var message = ' An error occured, please check credentials';
  //     if (error.message != null) {
  //       message = error.message;
  //     }

  //     Alert(
  //       context: context,
  //       type: AlertType.error,
  //       title: "Error",
  //       buttons: [
  //         DialogButton(
  //           child: Text(
  //             message,
  //             style: TextStyle(color: Colors.black, fontSize: 10),
  //           ),
  //           color: Colors.white,
  //           onPressed: () async {
  //             Navigator.pop(context);
  //           },
  //         )
  //       ],
  //     ).show();
  //     setState(() {
  //       loading = false;
  //     });
  //   } catch (err) {
  //     print(err);
  //     setState(() {
  //       loading = false;
  //     });
  //   }
  // }

  // void reset() async {
  //   auth.sendPasswordResetEmail(email: emailController.text.trim());
  // }

  // void trysubmit(BuildContext context) async {
  //   valid = formkey.currentState.validate();
  //   FocusScope.of(context).unfocus();

  //   if (valid) {
  //     formkey.currentState.save();
  //     submit(
  //         emailController.text.trim(), passwordController.text.trim(), context);
  //   }
  // }

  @override
  Widget build(BuildContext context) {

    double height = displayHeight(context);
    double width = displayWidth(context);

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
                top: MediaQuery.of(context).size.height / 5.5,
                left: 60.0,
                              child: Text("Log In",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'ttnorms', fontSize: 36.0, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.6,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: height * .80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90.0)),
                      border: Border.all(
                          width: 3.0,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: Form(
                    key: formkey,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          

                          Text(
                            "Welcome Back",
                            style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ttnorms',
                          fontSize: 20, letterSpacing: 0.5),
                          ),
                          padding(2.0),
                          Text(
                            "Please login to your account",
                            style: TextStyle(
                          color: Colors.grey,
                          
                          fontFamily: 'ttnorms',
                          fontSize: 14.5, letterSpacing: 0.5),
                          ),

                          padding(12.0),



                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
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
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(25.7),
                                      ),
                                    border: OutlineInputBorder(
                                        // borderSide: BorderSide(width: 4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Icon(
                                        Icons.person_outline,
                                        size: 35,
                                        color: Colors.pink.withOpacity(.75),
                                      ),
                                    ),
                                    hintText: "Username or Email Id", 
                                    hintStyle: TextStyle(fontSize: 12.0, color: pinkColor)
                                    ),

                                validator: (value) => value.isEmpty
                                    ? 'Enter a valid email address'
                                    : null,
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
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
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(25.7),
                                      ),
                                    border: OutlineInputBorder(
                                        // borderSide: BorderSide(width: 4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Icon(
                                        Icons.lock,
                                        size: 35,
                                        color: Colors.pink.withOpacity(.75),
                                      ),
                                    ),
                                    hintText: "Password", 
                                    hintStyle: TextStyle(fontSize: 12.0, color: pinkColor)
                                    ),

                                validator: (value) => value.length < 8
                                    ? 'Password must be 8 characters long'
                                    : null,
                              ),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * .8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      showDialog(context);
                                    },
                                    child: Text("Forget Password ?", style: TextStyle(color: pinkColor))),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(9.0),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: pinkColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              // height: 43.0,
                              width: MediaQuery.of(context).size.width * .8,
                              child: FlatButton(
                                  onPressed: () {
                                    // trysubmit(context);
                                    Navigator.push(context, new MaterialPageRoute(builder: (context) => VerificationPage()));
                                  },
                                  child: (loading)
                                      ? CircularProgressIndicator()
                                      : Text("Log in",
                                          style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            letterSpacing: 2.0,
                                          )))),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                          ),
                          Padding(
                            padding:
                                
                                const EdgeInsets.only(left: 45.0, right: 80.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    width: (MediaQuery.of(context).size.width / 2) - 120.0,
                                    child: Divider(
                                      thickness: 2.0,
                                      color: pinkColor,
                                    )),
                                Text(
                                  'OR',
                                  style: TextStyle(color: pinkColor),
                                ),
                                Container(
                                    width:
                                        (MediaQuery.of(context).size.width / 2) -
                                            120.0,
                                    child: Divider(
                                      thickness: 2.0,
                                      color: pinkColor,
                                    )),
                              ],
                            ),
                          ),
                          padding(8.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0, right: 80.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.asset('assets/icons/facebook_icon.png', height: 50.0, width: 50.0,),
                                ),

                                padding(15.0),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.asset('assets/icons/google.png', height: 50.0, width: 50.0,),
                                )

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0, right: 80.0),
                            child: GestureDetector(
                              onTap: () => Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => SignUp())),
                              child: Container(
                                  height: 27,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 13.0),
                                              children: [
                                            TextSpan(text: "New User ?  "),
                                            TextSpan(
                                                text: "Sign Up",
                                                style: TextStyle(
                                                    color: pinkColor))
                                          ]))
                                          )),
                            ),
                          ),
                          SizedBox(height: 20.0,),
                        ],
                      ),
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
