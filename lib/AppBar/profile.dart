import 'package:congle/Auxiliary/custom_size.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    double height = displayHeight(context);
    
    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * .150), child: MyAppBar()),
      body: Center(
        child: Text('PROFILE'),
      ),
    );
  }
}