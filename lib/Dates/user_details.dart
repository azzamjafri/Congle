import 'package:carousel_slider/carousel_slider.dart';
import 'package:congle/AppBar/app_bar.dart';


import 'package:congle/Auxiliary/colors.dart';

import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Bookings/congratulations_screen.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  List<bool> isSelected;

  CarouselController buttonCarouselController = CarouselController();

  @override
  void initState() {
    isSelected = [true, false];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    double width = displayWidth(context);

    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * .150), child: MyAppBar()),
      body: Container(
        // width: width / 1.2,
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              padding(6.0, 6.0),
              Center(
                child: profilePic(),
              ),
              padding(1.0, 5.0),
              Center(
                child: Text(
                  "Samanta, 22",
                  style: myStyle(25.0, Colors.black, true),
                ),
              ),
              padding(0.0, 2.0),
              Center(
                child: Text("2 km away, writer",
                    style: myStyle(16.0, Colors.grey)),
              ),
              padding(5.0, 5.0),
              Text(
                "About me",
                style: TextStyle(
                    fontSize: 18.0,
                    color: pinkColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ttnorms',
                    letterSpacing: 0.6),
              ),
              padding(2.0, 1.5),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  fontSize: 14.2,
                  color: Colors.black,
                  height: 1.4,
                  fontFamily: 'ttnorms',
                ),
              ),
              padding(5.0, 5.0),
              Text(
                "Interests",
                style: TextStyle(
                    fontSize: 16.5,
                    color: pinkColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ttnorms',
                    letterSpacing: 0.6),
              ),
              padding(3.0, 3.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  tags("Fitness", 11.0),
                  tags("Beauty", 11.0),
                  tags("Dogs", 11.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  tags("Cats", 11.0),
                  tags("Laundry", 11.0),
                ],
              ),
              padding(5.0, 5.0),
              Spacer(),
              accept(),
              // Align(
              //   alignment: AlignmentDirectional.centerEnd,

              //   child: Transform.translate(
              //     offset: Offset(-3, 30),
              //     child: accept(),

              //   ),
              // ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  accept() {
    return Container(
        decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        height: 44.0,
        width: MediaQuery.of(context).size.width * 0.9,
        child: FlatButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => Congratulations()));
            },
            child: Text("Accept",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                ))));
  }

  tags(String tag, [double size = 14.0]) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 12.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: displayWidth(context) / 6,
          height: 25.0,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              // color: Colors.transparent,
              // border: Border.all(color: pinkColor),
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: Center(
            child: Text(
              "$tag",
              style: TextStyle(color: Colors.black, fontSize: size),
            ),
          ),
        ),
      ),
    );
  }

  padding(top, bottom, [right = 0.0, left = 0.0]) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
    );
  }

  profilePic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    // color: pinkColor,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(120.0),
                    child: Image.asset('assets/profilepic.jpg'))),
            Positioned(
              top: 85.0,
              left: 85.0,
              child: Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/superdate.png')),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),

                ),

              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        Text("2 hours ago",
            style: myStyle(11.5, Colors.grey, true)),
      ],
    );
  }

  myStyle([size = 15.0, color = Colors.grey, bold = false]) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontFamily: 'ttnorms',
    );
  }
}
