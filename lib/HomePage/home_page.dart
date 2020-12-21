import 'package:congle/Auxiliary/app_bar.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected;

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
              padding(5.0, 3.0),
              Container(
                width: width / 1.2,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Container(
                          height: 20.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'search online',
                                style: myStyle(15.0),
                              ),
                              
                              ToggleButtons(
                                fillColor: Colors.transparent,
                                
                                selectedColor: Colors.grey,
                                borderRadius: BorderRadius.circular(12.0),
                                children: <Widget>[
                                  Container(
                                    height: 20.0,
                                    width: 15.0,
                                    decoration: BoxDecoration(
                                        color: isSelected[0]
                                            ? Colors.green
                                            : Colors.transparent,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    height: 20.0,
                                    width: 15.0,
                                    decoration: BoxDecoration(
                                        color: isSelected[1]
                                            ? Colors.green
                                            : Colors.transparent,
                                        shape: BoxShape.circle),
                                  ),
                                ],
                                onPressed: (int index) {
                                  setState(() {
                                    for (int i = 0; i < isSelected.length; i++) {
                                      isSelected[i] = i == index;
                                    }
                                  });
                                },
                                isSelected: isSelected,
                              ),
                            ],
                          ),
                        ),
                        padding(5.0, 5.0),
                        Text(
                          "Emma, 22",
                          style: myStyle(30.0, Colors.black, true),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pin_drop),
                            padding(0.0, 0.0, 4.0, 4.0),
                            Text("1.2 km away", style: myStyle(16.6, Colors.black))
                          ],
                        ),
                        padding(5.0, 5.0),
                        getPhoto(),
                        padding(15.0, 5.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Designer @grafix studios",
                              style: myStyle(14.5, Colors.black),
                            ),
                          ),
                        ),
                        padding(2.5, 2.5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Usually I'm so late, but now I-so-late",
                              style: myStyle(13.7, Colors.orangeAccent.shade100),
                            ),
                          ),
                        ),
                        padding(5.0, 5.0),
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
                      ],
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

  padding(top, bottom, [right=0.0, left = 0.0]) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
    );
  }

  getPhoto() {
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 3.0,
            width: MediaQuery.of(context).size.width / 1.4,
            decoration: BoxDecoration(
            //   boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.4),
            //     spreadRadius: 2,
            //     blurRadius: 5,
            //     offset: Offset(1, 10), // changes position of shadow
            //   ),
            // ], 
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/girl.jpg',
                  fit: BoxFit.fill,
                ))),
        Positioned(
          bottom: 15.0,
          right: 15.0,
          child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                // border: Border.all(color: Colors.white, width: 1.2)
              ),
              child: Center(
                  child: IconButton(
                      onPressed: () {},
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
                icon: Image.asset('assets/icons/remove.jpg'), onPressed: () {}),
            Center(child: Text('Remove', style: myStyle())),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: 3.0, right: 3.0)),
        Column(
          children: [
            IconButton(
                icon: Image.asset('assets/icons/date.jpg'), onPressed: () {}),
            Center(child: Text('Date', style: myStyle())),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: 3.0, right: 3.0)),
        Column(
          children: [
            IconButton(
                icon: Image.asset('assets/icons/superdate.jpg'),
                onPressed: () {}),
            Center(child: Text('Super Date', style: myStyle())),
          ],
        ),
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