import 'package:congle/Auxiliary/custom_size.dart';

import 'package:flutter/material.dart';

class CafeMainPage extends StatefulWidget {
  @override
  _CafeMainPageState createState() => _CafeMainPageState();
}

class _CafeMainPageState extends State<CafeMainPage> {
  var _filter = new TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(80.0),
      ),
      // body: SingleChildScrollView(child: getBody(),)
      body: getBody(),
    );
  }

  getBody() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        searchBar(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Categories',
            style: myStyle(17.5, Colors.black, true),
          ),
        ),
        getCategories(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Recomended',
            style: myStyle(17.5, Colors.black, true),
          ),
        ),
        getRecomendations(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Nearby',
            style: myStyle(17.5, Colors.black, true),
          ),
        ),
        getNearby(),
        SizedBox(height: 30.0),
      ],
    );
  }

  getNearby() {
    return getRecomendations();
  }

  getRecomendations() {
    return Container(
      height: 140.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(17.5))),
            elevation: 8.0,
            child: Container(
              // height: 130.0,
              width: 200.0,
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(17.5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 90.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17.5)),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17.5),
                                topRight: Radius.circular(17.5)),
                            child: Image.asset('assets/bookings/r4.jpg',
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 8.0,
                        left: 8.0,
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(

                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          ),
                          child: Image.asset('assets/icons/heart.png'),
                        ),
                      ),
                      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("The Brunch",
                                style: myStyle(15.0, Colors.black, true)),
                            Text("18 chill st, London",
                                style: myStyle(13.0, Colors.black, true))
                          ],
                        ),
                        // Spacer(),
                        Container(
                          height: 20.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text("Book now",
                                  style: myStyle(11.0, Colors.black, true))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          // 2nd card
                    Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(17.5))),
            elevation: 8.0,
            child: Container(
              width: 200.0,
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(17.5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 90.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17.5)),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17.5),
                                topRight: Radius.circular(17.5)),
                            child: Image.asset('assets/bookings/r3.jpg',
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 8.0,
                        left: 8.0,
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(

                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          ),
                          child: Image.asset('assets/icons/heart.png'),
                        ),
                      ),
                      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("The Cafe",
                                style: myStyle(15.0, Colors.black, true)),
                            Text("18 chill st, London",
                                style: myStyle(13.0, Colors.black, true))
                          ],
                        ),
                        // Spacer(),
                        Container(
                          height: 20.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text("Book now",
                                  style: myStyle(11.0, Colors.black, true))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          //3rd 
                    Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(17.5))),
            elevation: 8.0,
            child: Container(
              width: 200.0,
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(17.5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 90.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17.5)),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17.5),
                                topRight: Radius.circular(17.5)),
                            child: Image.asset('assets/bookings/r1.jpg',
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 8.0,
                        left: 8.0,
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(

                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          ),
                          child: Image.asset('assets/icons/heart.png'),
                        ),
                      ),
                      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("The Brunch",
                                style: myStyle(15.0, Colors.black, true)),
                            Text("18 chill st, London",
                                style: myStyle(13.0, Colors.black, true))
                          ],
                        ),
                        // Spacer(),
                        Container(
                          height: 20.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text("Book now",
                                  style: myStyle(11.0, Colors.black, true))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),






        ],
      ),
    );
  }

  getCategories() {
    return Container(
      height: 140.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                height: 115.0,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset('assets/bookings/r1.jpg',
                        fit: BoxFit.contain)),
              ),
              Text(
                'Nearby',
                style: myStyle(16.5, Colors.black, true),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 115.0,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset('assets/bookings/r2.jpg',
                        fit: BoxFit.contain)),
              ),
              Text(
                'Rooftop',
                style: myStyle(16.5, Colors.black, true),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 115.0,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset('assets/bookings/r1.jpg',
                        fit: BoxFit.contain)),
              ),
              Text(
                'Nearby',
                style: myStyle(16.5, Colors.black, true),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 115.0,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset('assets/bookings/r2.jpg',
                        fit: BoxFit.contain)),
              ),
              Text(
                'Rooftop',
                style: myStyle(16.5, Colors.black, true),
              ),
            ],
          ),
        ],
      ),
    );
  }

  searchBar() {
    return Container(
      height: 55.0,
      width: MediaQuery.of(context).size.width - 50.0,
      // width: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,

            offset: Offset(1, 10), // changes position of shadow
          ),
        ],
      ),

      child: new TextField(
        controller: _filter,
        decoration: new InputDecoration(
            hintText: 'search for ...',
            suffixIcon: Icon(Icons.menu),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )),
        onChanged: (val) {
          _filter.addListener(() {
            if (_filter.text.isEmpty) {
              _searchText = "";
            } else {
              _searchText = capitalize(_filter.text);
            }
          });
        },
      ),
    );
  }

  getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 76.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context)),
          CircleAvatar(
            radius: 28.0,
            backgroundImage: AssetImage('assets/profilepic.jpg'),
          ),
          Padding(padding: EdgeInsets.only(right: 10.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, Samaraya!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              Padding(padding: EdgeInsets.only(top: 2.0)),
            ],
          ),
          Spacer(),
          IconButton(
              icon: Image.asset(
                'assets/icons/heart.png',
              ),
              onPressed: () {}),
        ],
      ),
    );
  }

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
}
