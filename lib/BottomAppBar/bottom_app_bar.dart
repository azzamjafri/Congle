
import 'package:congle/AppBar/settings.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/Dates/dates.dart';
import 'package:flutter/material.dart';



class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    return BottomAppBar(


      shape: CircularNotchedRectangle(),
      
      color: pinkColor,
      child: Container(
        height: 78.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
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
                      // color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      border: Border.all(color: Colors.white, width: 1.2)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.restaurant_menu  , size: height / 25, color: Colors.white,))),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Dates()));
              },
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: height / 28 + 6,
                    color: Colors.white,
                  ),
                  Text(
                    "Dates",
                    style: style(),
                  )
                ],
              ),
            ),
            padding(0.0, 0.0, 5.0, 5.0),
            
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chat,
                  size: height / 28 + 6,
                  color: Colors.white,
                ),
                Text(
                  "Chat",
                  style: style(),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => Settings()));
              },
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    size: height / 28 + 6,
                    color: Colors.white,
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
      ),
      
    );
    
  }

  style([size = 15.0, color = Colors.white]) {
    return TextStyle(
      fontSize: size,
      color: color
    );
  }
}
