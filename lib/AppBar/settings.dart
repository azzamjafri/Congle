import 'package:congle/AppBar/app_bar.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}



class _SettingsState extends State<Settings> {

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
    double width = displayWidth(context);
    // double height = displayHeight(context);

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          padding(5.0, 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Location', style: myStyle(16.5, Colors.black, true)),
              padding(0.0, 0.0, 40.0, 40.0),
              Text('Jaipur, Rajasthan', style: myStyle(16.0, pinkColor)),
            ],
          ),
          padding(15.0, 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Distance', style: myStyle(16.5, Colors.black, true)),
              // padding(0.0, 0.0, 20.0, 20.0),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("${(distance - 20).toString()} km", style: myStyle(15.0, pinkColor)),
                  Slider(
                    value: distance.toDouble(),
                    inactiveColor: Colors.grey[300],
                    min: 20,
                    max: 300,
                    activeColor: Colors.pink,
                    onChanged: (double value) {
                      setState(() {
                        distance = value.round();
                        // print(height.toString());
                      });
                    },
                  ),
                ],
              ),
            ],
          ),

          padding(5.0, 5.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Age Range', style: myStyle(16.5, Colors.black, true)),
              // padding(0.0, 0.0, 15.0, 10.0),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("${(age).toString()}", style: myStyle(15.0, pinkColor)),
                  Slider(
                   
                    inactiveColor: Colors.grey[300],
                    value: age.toDouble(),
                    min: 18,
                    max: 85,
                    activeColor: Colors.pink,
                    onChanged: (double value) {
                      setState(() {
                        age = value.round();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),

          padding(5.0, 5.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Show my profile', style: myStyle(16.5, Colors.black)),
              // padding(0.0, 0.0, 15.0, 10.0),
              Spacer(),
              Container(
                width: 90.0,
                child: Slider(
                  value: showProfile.toDouble(),
                  min: 0,
                  max: 1,
                  activeColor: Colors.pink,
                  onChanged: (double value) {
                    setState(() {
                      showProfile = value.round();
                      
                    });
                  },
                ),
              ),
            ],
          ),
          padding(5.0, 5.0),

           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Privacy policy', style: myStyle(16.5, Colors.black)),
              // padding(0.0, 0.0, 15.0, 10.0),
              Spacer(),
              IconButton(icon: Icon(Icons.arrow_drop_down  ), onPressed: () {}),
            ],
          ),

          padding(5.0, 5.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Terms and Condition', style: myStyle(16.5, Colors.black)),
              // padding(0.0, 0.0, 15.0, 10.0),
              Spacer(),
              IconButton(icon: Icon(Icons.arrow_drop_down  ), onPressed: () {}),
            ],
          ),
          Spacer(),
          getBottom(),
        ],
      ),
    );
  }

  getBottom() {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("LogOut", style: myStyle(18.0, Colors.grey)),
            padding(5.0, 5.0),
            Text("Delete My Account", style: myStyle(17.0, Colors.grey),),
            padding(10.0, 5.0),
            Text("App version 1.0", style: myStyle(10.5, Colors.grey ),)
          ],
        ),
      ),
    );

  }
}
