import 'package:carousel_slider/carousel_slider.dart';
import 'package:congle/Auxiliary/app_bar.dart';
import 'package:congle/Auxiliary/bottom_nav_bar.dart';
import 'package:congle/Auxiliary/colors.dart';

import 'package:congle/Auxiliary/custom_size.dart';
import 'package:flutter/material.dart';

class HomePageDetailed extends StatefulWidget {
  @override
  _HomePageDetailedState createState() => _HomePageDetailedState();
}

class _HomePageDetailedState extends State<HomePageDetailed> {
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              padding(5.0, 5.0),
              Hero(
                tag: 'homepage',
                child: Container(
                  width: width / 1.2,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          padding(6.0, 6.0),
                          getPhotoCarousel(),
                          padding(10.0, 5.0),
                          Text(
                            "Emma, 22",
                            style: myStyle(25.0, Colors.black, true),
                          ),
                          padding(2.0, 2.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                              padding(0.0, 0.0, 4.0, 4.0),
                              Text("1.2 km away",
                                  style: myStyle(16.0, Colors.black))
                            ],
                          ),
                          padding(2.0, 5.0),
                          Text(
                            "Usually I'm so late, but now I-so-late",
                            style: myStyle(14.4, pinkColor),
                          ),
                          padding(5.0, 5.0),
                          Text(
                            "About me",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: pinkColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ttnorms',
                              letterSpacing: 0.6
                            ),
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
                              letterSpacing: 0.6
                            ),
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

                          Text(
                            "Here for",
                            style: TextStyle(
                              fontSize: 16.5,
                              color: pinkColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ttnorms',
                              letterSpacing: 0.6
                            ),
                          ),
                          
                          padding(1.5, 1.5),
                          Text(
                            "Serious relationships",
                            style: TextStyle(
                              fontSize: 14.2,
                              color: Colors.black,
                              height: 1.4,
                              fontFamily: 'ttnorms',
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
              ),

              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Transform.translate(
                  offset: Offset(0, 0),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                    child: getButtons(),
                  ),
                ),
              ),

              // Padding(padding: EdgeInsets.only(bottom: 20.0), child: getButtons()),
            ],
          ),
        ),
      ),
    );
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

  getPhotoCarousel() {
    return Stack(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 10,

                offset: Offset(1, 10), // changes position of shadow
              ),
            ],
          ),
          child: CarouselSlider.builder(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height / 3.8,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
              child: Container(
                  height: MediaQuery.of(context).size.height / 3.0,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/girl.jpg',
                        fit: BoxFit.fill,
                      ))),
            ),
          ),
        ),
        Positioned(
          bottom: 15.0,
          right: 15.0,
          child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Center(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_downward,
                        size: 20.0,
                        color: Colors.white,
                      )))),
        ),
      ],
    );
  }

  getButtons() {
    return BottomNavBar();
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
