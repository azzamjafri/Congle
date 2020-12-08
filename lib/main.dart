
import 'package:congle/colors.dart';
import 'package:flutter/material.dart';

import 'Startup/startup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Congle',
      theme: ThemeData(
        
        primarySwatch: pinkColor,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartUpPage(),
    );
  }
}
