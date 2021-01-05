import 'package:congle/AppBar/app_bar.dart';
import 'package:congle/Auxiliary/custom_size.dart';

import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}



class _ChatsState extends State<Chats> {

  int distance = 120;
  int age = 18;
  int showProfile = 1;
  
  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);

    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * .150),
        child: MyAppBar(),
      ),
      body: getBody(),
    );
  }

  getBody() {
    

    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning),
          Padding(padding: EdgeInsets.all(10.0)),
          Text("Chats option coming soon", style: myStyle(16.0, Colors.grey, true))
        ],
      ),
    );
  }

}
