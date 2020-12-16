import 'package:flutter/material.dart';

import 'colors.dart';
import 'custom_size.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    return AppBar(
      backgroundColor: pinkColor,
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(30.0))),
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.person_outline)),
          ),
          new Column(
            children: [Icon(Icons.calendar_today), Text("Dates")],
          ),
          Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
                color: pinkColor,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Image.asset('assets/logo.png')),
          new Column(
            children: [Icon(Icons.chat), Text("Chat")],
          ),
          new Column(
            children: [Icon(Icons.menu), Text("Settings")],
          ),
        ],
      ),
    );
  }
}
