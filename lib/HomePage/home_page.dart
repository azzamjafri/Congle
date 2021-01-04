import 'package:congle/AppBar/app_bar.dart';
import 'package:congle/Auxiliary/bottom_nav_bar.dart';

import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/HomePage/home_page_detailed.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected;

  int searchOnline = 1;

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
          preferredSize: Size.fromHeight(height * .118), child: MyAppBar()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          padding(2.0, 2.0),
          Container(
            width: width / 1.2,
            height: height * .700,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Container(
                      height: height * .027,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'search online',
                            style: myStyle(16.0),
                          ),
                          Container(
                            width: 80.0,
                            child: Slider(
                              value: searchOnline.toDouble(),
                              min: 0,
                              max: 1,
                              activeColor: searchOnline == 1
                                  ? Colors.green
                                  : Colors.grey,
                              onChanged: (double value) {
                                setState(() {
                                  searchOnline = value.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    padding(height * .0035, height * .004),
                    Text(
                      "Emma, 22",
                      style: myStyle(30.0, Colors.black, true),
                    ),
                    padding(height * .003, height * .003),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.pin_drop),
                        padding(0.0, 0.0, 4.0, 4.0),
                        Text("1.2 km away", style: myStyle(16.6, Colors.black))
                      ],
                    ),
                    padding(height * .005, height * .005),

                    // STACK START

                    getPhoto(),
                    // padding(height * .0085, height * .0048),

                    
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          getButtons(),
          SizedBox(
            height: 4.0,
          ),
        ],
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

  getPhoto() {
    double height = displayHeight(context) / 3.0;

    // starting of widgets - 3.5
    return Stack(
      children: [
        Center(
          child: Container(
              height: MediaQuery.of(context).size.height / 1.90,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45.0))),
              child: ClipRRect(
                
                  borderRadius: BorderRadius.circular(45.0),
                  child: Image.asset(
                    'assets/girl.jpg',
                    fit: BoxFit.fill,
                  ))),
        ),
        Positioned(
          top: height,
          left: 10.0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Designer @grafix studios",
                style: myStyle(15.5, Colors.white, true),
              ),
            ),
          ),
        ),
        Positioned(
          top: (height) + 20.0,
          left: 10.0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Usually I'm so late, but now I-so-late",
                style: myStyle(14.3, Colors.orangeAccent.shade100, true),
              ),
            ),
          ),
        ),
        Positioned(
          top: (height) + 40.0,
          left: 10.0,
          child: Column(
            children: [
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
                  // tags("Dogs", 11.0),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height - 50.0,
          right: 15.0,
          child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                // border: Border.all(color: Colors.white, width: 1.2)
              ),
              child: Hero(
                tag: 'homepage',
                child: Center(
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => HomePageDetailed()));
                        },
                        icon: Icon(
                          Icons.arrow_downward,
                          size: 20.0,
                          color: Colors.white,
                        ))),
              )),
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
