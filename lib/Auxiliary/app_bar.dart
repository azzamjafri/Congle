import 'package:flutter/material.dart';

import 'colors.dart';
import 'custom_size.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    return AppBar(
      toolbarHeight: height * .140,
      backgroundColor: pinkColor,
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0))),
      // centerTitle: false,
      title: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Card(
            
            elevation: 12.0,
            color: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Container(
              height: height / 16 + 3,
              width: height / 16 +  3,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        border: Border.all(color: Colors.white, width: 1.2)),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.person_outline, size: height / 32))),
          ),
          new Column(
            children: [Icon(Icons.calendar_today, size: height / 32 + 6,), Text("Dates", style: style(),)],
          ),
          Container(
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
          new Column(
            children: [Icon(Icons.chat, size: height / 32 + 6,), Text("Chat", style: style(), )],
          ),
          new Column(
            children: [Icon(Icons.menu, size: height / 32 + 6,), Text("Settings", style: style(),)],
          ),
        ],
      ),
    );
  }

  style() {
    return TextStyle(fontSize: 14.0,);
  }
}
