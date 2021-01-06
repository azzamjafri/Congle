
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Bookings/main_page.dart';
import 'package:congle/BottomAppBar/bottom_app_bar.dart';
import 'package:congle/HomePage/home_page.dart';
import 'package:flutter/material.dart';


class CafeHomePage extends StatefulWidget {
  @override
  _CafeHomePageState createState() => _CafeHomePageState();
}

class _CafeHomePageState extends State<CafeHomePage> {

    
PageController _myPage = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    
    return new Scaffold(
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: height / 12 + 6,
            width: height / 12 + 6,
            
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              // backgroundColor: Colors.pink[50],
            },
            child: Image.asset('assets/icons/logo.png'),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
      

      body: getBody(),
    );
  }

  getBody() {
    return PageView(
      onPageChanged: (int) {

      },
      controller: _myPage,
          physics: NeverScrollableScrollPhysics(),
          children: [
            CafeMainPage(),
          Center(
            child: Container(
              child: Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          )
          ],
    );
  }


}