import 'package:congle/AppBar/app_bar.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

int height = 120;

class _SettingsState extends State<Settings> {
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
    double width = displayWidth(context);
    // double height = displayHeight(context);

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // padding(10.0, 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Location', style: myStyle(16.5, Colors.black, true)),
              padding(0.0, 0.0, 40.0, 40.0),
              Text('Jaipur, Rajasthan', style: myStyle(16.0, pinkColor)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Distance', style: myStyle(16.5, Colors.black, true)),
              padding(0.0, 0.0, 20.0, 20.0),
              Slider(
                value: height.toDouble(),
                min: 20,
                max: 300,
                activeColor: Colors.pink,
                onChanged: (double value) {
                  setState(() {
                    height = value.round();
                    // print(height.toString());
                  });
                },
              ),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Age Range', style: myStyle(16.5, Colors.black, true)),
              padding(0.0, 0.0, 15.0, 10.0),
              Slider(
                value: height.toDouble(),
                min: 20,
                max: 300,
                activeColor: Colors.pink,
                onChanged: (double value) {
                  setState(() {
                    height = value.round();
                    // print(height.toString());
                  });
                },
              ),
            ],
          ),


        ],
      ),
    );
  }
}
