import 'package:carousel_slider/carousel_slider.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/BookCafe/select_time.dart';
import 'package:congle/BottomAppBar/bottom_app_bar.dart';
import 'package:congle/HomePage/home_page.dart';

import 'package:flutter/material.dart';

class BookCafe extends StatefulWidget {
  @override
  _BookCafeState createState() => _BookCafeState();
}

class _BookCafeState extends State<BookCafe> {
  bool isFavourite = false;

  int steps;
  int count = 1;
  int image_count;
  CarouselController buttonCarouselController = CarouselController();

  final key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    steps = 2;
    image_count = 3;
    super.initState();
  }

  final carouselController = PageController();

  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    

    return new Scaffold(
      key: key,
      backgroundColor: Colors.pink[50],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: height / 12 + 6,
        width: height / 12 + 6,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () => Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => HomePage())),
            child: Image.asset('assets/icons/logo.png'),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Stack(
          children: <Widget>[
            imageCarousel(),
            Positioned(
              child: getBody(),
              top: MediaQuery.of(context).size.height / 3.0,
            ),
            Positioned(
              child: back(),
              top: 50.0,
            ),
          ],
        ),
      ),
    );
  }

  getBody() {
    return Card(
      elevation: 15.0,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
          child: columnContents(),
        ),
      ),
    );
  }

  columnContents() {
    double h = displayHeight(context);
    
    return SingleChildScrollView(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            '6/10 table available',
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),

          padding(h*.008, h*.008),
          Container(
            height: 6.0,
            width: 70.0,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
          ),

          padding(h*.008, h*.008),

          Text("The Brunch", style: myStyle(25.0, Colors.black, true)),
          padding(h*.002, 0.0),
          Text("18 Chiltern St, London",
              style: myStyle(17.0, Colors.black, false)),

              padding(h*.003, h*.003),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ],
          ),

          padding(h*.005, h*.003),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Icon(
                  Icons.local_drink,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Icon(Icons.wifi),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Icon(Icons.cake),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Icon(Icons.attach_money),
              ),
            ],
          ),

          padding(h*.005, h*.005),

          // BUTTONS

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: displayWidth(context) / 2.4,
                child: FlatButton(
                    onPressed: () {},
                    color: pinkColor,
                    shape: StadiumBorder(),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.map,
                            color: Colors.white,
                          ),
                          padding(0.0, 0.0, 5.0, 5.0),
                          Text(
                            "VIEW MAP",
                            style: myStyle(15.0, Colors.white, true),
                          )
                        ],
                      ),
                    )),
              ),
              Spacer(),
              Container(
                width: displayWidth(context) / 2.2,
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: StadiumBorder(side: BorderSide(color: pinkColor, width: 2.0)),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: pinkColor,
                          ),
                          padding(0.0, 0.0, 5.0, 5.0),
                          Text(
                            "CALL RESTRAUNT",
                            style: myStyle(11.0, pinkColor, true),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),


          padding(h*.007, h*.007),

          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            textDirection: TextDirection.ltr,
            children: [
              TableRow(children: [
                Center(
                    child: Text("Open Hour",
                        style: myStyle(17.5, Colors.black, true))),
                Center(
                    child: Text("Cuisine",
                        style: myStyle(17.5, Colors.black, true))),
              ]),
              
              TableRow(children: [
                Center(
                    child: Text("09:00 - 00:00",
                        style: myStyle(
                          14.5,
                          Colors.black,
                        ))),
                Center(
                    child: Text("Pizza",
                        style: myStyle(
                          14.5,
                          Colors.black,
                        )))
              ]),
            ],
          ),
          padding(h*.005, h*.005),

          Row(
            children: [
              Text("Price", style: myStyle(16.5, Colors.black, true)),
              Spacer(),
              Text("Rs. 500-600 for two people",
                  style: myStyle(15.0, Colors.grey, false)),
            ],
          ),
          padding(h*.002, h*.002),

          Row(
            children: [
              Text("Payment", style: myStyle(16.5, Colors.black, true)),
              Spacer(),
              Text("Card, Cash, Online",
                  style: myStyle(15.0, Colors.grey, false)),
            ],
          ),
          padding(h*.003, h*.0035),

          Hero(
            tag: 'reserve table',
            child: Container(
              alignment: Alignment.center,
              width: displayWidth(context) / 2.0,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SelectTime()));
                  },
                  color: Colors.white,
                  shape: StadiumBorder(side: BorderSide(color: pinkColor, style: BorderStyle.solid, width: 2.0  )),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.event_seat  ,
                          color: pinkColor,
                        ),
                        padding(0.0, 0.0, 5.0, 5.0),
                        Text(
                          "RESERVE TABLE",
                          style: myStyle(14.0, pinkColor, true),
                        )
                      ],
                    ),
                  )),
            ),
          ),

          SizedBox(
            height: h*.18,
          ),
        ],
      ),
    );
  }

  back() {
    return new Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 10.0)),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 1.8)),
      ],
    );
  }

  imageCarousel() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      child: CarouselSlider.builder(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 2.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1.0,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int itemIndex) => Container(
            height: MediaQuery.of(context).size.height / 2.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/bookings/r1.jpg',
              fit: BoxFit.fill,
            )),
      ),
    );
  }

  blackText(String txt, [double size = 15.1]) {
    return new Text('$txt', style: new TextStyle(fontWeight: FontWeight.w500));
  }

  redText(String txt, [double size = 15.0]) {
    return new Text(
      "$txt",
      style: TextStyle(
          color: pinkColor, fontSize: size, fontWeight: FontWeight.w400),
    );
  }
}
