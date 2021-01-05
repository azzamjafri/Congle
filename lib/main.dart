import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Startup/splash_screen.dart';
import 'package:flutter/material.dart';




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
      home: SplashScreen(),
    );
  }
}
