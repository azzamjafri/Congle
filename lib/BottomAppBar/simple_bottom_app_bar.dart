import 'package:congle/AppBar/settings.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:flutter/material.dart';



class SimpleBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    return BottomAppBar(
      child: Container(
        color: pinkColor,
        height: height*.110,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Card(
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
                        icon: Icon(Icons.person_outline, size: height / 32))),
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.calendar_today,
                  size: height / 32 + 6,
                  color: Colors.white,
                ),
                Text(
                  "Dates",
                  style: style(),
                )
              ],
            ),
            Center(
              child: Container(
                  height: height / 12 + 6,
                  width: height / 12 + 6,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: pinkColor,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Image.asset('assets/icons/logo.png')),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chat,
                  size: height / 32 + 6,
                  color: Colors.white,
                ),
                Text(
                  "Chat",
                  style: style(),
                )
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(
                  Icons.menu,
                  size: height / 32 + 6,
                  color: Colors.white,
                ), 
                onPressed: () {
                  Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Settings()));
                }),
                
                Text(
                  "Settings",
                  style: style(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  style() {
    return TextStyle(
      fontSize: 15.0,
      color: Colors.white
    );
  }
}
