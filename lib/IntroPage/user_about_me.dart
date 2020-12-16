import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:flutter/material.dart';

class UserAboutMe extends StatefulWidget {
  @override
  _UserAboutMeState createState() => _UserAboutMeState();
}

class _UserAboutMeState extends State<UserAboutMe> {
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    double width = displayWidth(context);

    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * .155),
        
        child: AppBar(
          
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
              children: [Icon(Icons.menu  ), 
              Text("Settings")],
            ),
            ],
          ),

          
          
        ),
      ),
    );
  }
}
