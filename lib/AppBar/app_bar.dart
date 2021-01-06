import 'package:congle/AppBar/chats.dart';
import 'package:congle/AppBar/settings.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Dates/dates.dart';
import 'package:congle/HomePage/home_page.dart';
import 'package:congle/IntroPage/user_about_me.dart';
import 'package:flutter/material.dart';


int currentApp  = 0;

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    return AppBar(
      toolbarHeight: height * .115,
      backgroundColor: pinkColor,
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0))),
      
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          currentApp == 1 ? Card(
            elevation: 12.0,
            color: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Container(
                height: height / 16 + 3,
                width: height / 16 + 3,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    border: Border.all(color: Colors.white, width: 1.2)),
                child: IconButton(
                    onPressed: () {
                      
                      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => UserAboutMe()));
                    },
                    icon: Icon(Icons.person_outline, size: height / 32))),
          ) : GestureDetector(
            onTap: () {
              setState(() {
                currentApp = 1;
              });
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => UserAboutMe()));
            },
            child: new Column(
              children: [
                Icon(
                  Icons.person_outline,
                  size: height / 32 + 6,
                ),
                Text(
                  "Profile",
                  style: style(),
                )
              ],
            ),
          ),

          currentApp == 2 ? Card(
            elevation: 12.0,
            color: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Container(
                height: height / 16 + 3,
                width: height / 16 + 3,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    border: Border.all(color: Colors.white, width: 1.2)),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Dates()));
                    },
                    icon: Icon(Icons.calendar_today, size: height / 32))),
          )
          :
          GestureDetector(
            onTap: () {
              setState(() {
                currentApp = 2;
              });
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Dates()));
            },
            child: new Column(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: height / 32 + 6,
                ),
                Text(
                  "Dates",
                  style: style(),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentApp = 0;
              });
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
                height: height / 12 + 6,
                width: height / 12 + 6,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  color: pinkColor,
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Image.asset('assets/icons/logo.png')),
          ),


          currentApp == 3 ? 
          Card(
            elevation: 12.0,
            color: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Container(
                height: height / 16 + 3,
                width: height / 16 + 3,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    border: Border.all(color: Colors.white, width: 1.2)),
                child: IconButton(
                    onPressed: () {
                      
                      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Chats()));
                    },
                    icon: Icon(Icons.chat, size: height / 32))),
          )
          :
          GestureDetector(
            onTap: () {
              setState(() {
                currentApp = 3;
              });
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Chats()));
            },
            child: new Column(
              children: [
                Icon(
                  Icons.chat,
                  size: height / 32 + 6,
                ),
                Text(
                  "Chat",
                  style: style(),
                )
              ],
            ),
          ),

          currentApp == 4 ? 
          Card(
            elevation: 12.0,
            color: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Container(
                height: height / 16 + 3,
                width: height / 16 + 3,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    border: Border.all(color: Colors.white, width: 1.2)),
                child: IconButton(
                    onPressed: () {
                      
                      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Settings()));
                    },
                    icon: Icon(Icons.menu, size: height / 32))),
          )
          

          :
          GestureDetector(
            onTap: () {
              setState(() {
                currentApp = 4;
              });
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Settings()));
            },
            child: new Column(
              children: [
                Icon(
                  Icons.menu,
                  size: height / 32 + 6,
                ), 
                
                
                Text(
                  "Settings",
                  style: style(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  style() {
    return TextStyle(
      fontSize: 14.0,
    );
  }
}
