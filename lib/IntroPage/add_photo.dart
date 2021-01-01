import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/IntroPage/user_about_me.dart';

import 'package:flutter/material.dart';

class AddPhoto extends StatefulWidget {
  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  TextEditingController phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    double width = displayWidth(context);

    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
          // padding(32.0, 32.0),
          Container(
            height: height * 0.38,
            child: Image.asset(
              'assets/add_photo.jpg',
              fit: BoxFit.fill  ,
            ),
          ),
          padding(height / 28, 0.0),
          Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Text(
                "Add Your Photos",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ttnorms',
                    fontSize: 24.0,
                    letterSpacing: 0.56),
              )),

          // padding(2.0, 2.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Container(
                    height: height * .15,
                    width: 80.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(9.0))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Container(
                    height: height * .15,
                    width: 80.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(9.0))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
          // padding(30.0, 30.0),
          Spacer(),
          
          Container(
            margin: EdgeInsets.only(bottom: 12.0),
              decoration: BoxDecoration(
                  color: pinkColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              height: 44.0,
              width: MediaQuery.of(context).size.width * .6,
              child: FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => UserAboutMe())),
                  child: Text("Continue",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      )))),

          // padding(15.0, 25.0),
          // padding(10.0, 25.0),
        ],
      ),
    );
  }

  padding(top, bottom) {
    return Padding(padding: EdgeInsets.only(top: top, bottom: bottom));
  }
}
