import 'package:congle/Auxiliary/app_bar.dart';
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
        child: MyAppBar()),

    );
  }
}
