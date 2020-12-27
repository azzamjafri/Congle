import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/BottomAppBar/bottom_app_bar.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        searchBar(),
        Text('Categories', style: myStyle(16.0, Colors.black, true),),
        Container(
          
          height: 120.0,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            shrinkWrap: true,
            
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                // height: 100.0,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  // image: DecorationImage(image: AssetImage('assets/bookings/r1.jpg'), ),

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset('assets/bookings/r1.jpg', fit: BoxFit.contain)),
              ),




              Container(
                // height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  // image: DecorationImage(image: AssetImage('assets/bookings/r1.jpg'), ),

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset('assets/bookings/r2.jpg', fit: BoxFit.contain)),
              ),






              Container(
                // height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  // image: DecorationImage(image: AssetImage('assets/bookings/r1.jpg'), ),

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset('assets/bookings/r1.jpg', fit: BoxFit.contain)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  searchBar() {
    return Container(
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
      height: 55.0,
      width: MediaQuery.of(context).size.width / 1.2,
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
