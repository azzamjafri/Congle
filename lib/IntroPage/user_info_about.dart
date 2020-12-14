import 'package:congle/IntroPage/add_photo.dart';
import 'package:congle/colors.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class UserInfoAbout extends StatefulWidget {
  @override
  _UserInfoAboutState createState() => _UserInfoAboutState();
}

class _UserInfoAboutState extends State<UserInfoAbout> {
  String currentText;

  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  final key = new GlobalKey<ScaffoldState>();
  final formkey = GlobalKey<FormState>();
  bool loading = false;

  List<bool> isSelected;
  List<bool> isSelected2;
  bool _switchValue=true;

  @override
  void initState() {
    isSelected = [true, false];
    isSelected2 = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkColor,
      key: key,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                              child: Container(
                  height: 240.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/user_info_about.jpg', fit: BoxFit.fill,)
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 6,
                  left: MediaQuery.of(context).size.width / 2 - 31,
                  child: Container(
                    // margin: EdgeInsets.all(100.0),
                    height: 62.0,
                    width: 62.0,
                    child: Center(
                        child: Icon(
                      Icons.camera_enhance,
                      size: 30.0,
                      color: pinkColor,
                    )
                    // child: Image.asset('assets/camera_icon.jpg', scale: 0.7,)
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 500.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      border: Border.all(
                          width: 3.0,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        padding(8.0),
                        Text(
                          "Tell Us About Yourself",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ttnorms',
                              fontSize: 20,
                              letterSpacing: 0.5),
                        ),
                        padding(3.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 15.0, top: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              // key: __passwordkey,

                              controller: nameController,

                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  hoverColor: Colors.white,
                                  filled: true,
                                  labelText: 'Name',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide(width: 4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  suffixIcon: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                      fontSize: 12.0, color: pinkColor)),

                              validator: (value) => value.isEmpty
                                  ? 'Enter a valid email address'
                                  : null,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              // key: __passwordkey,
                              controller: dobController,

                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  hoverColor: Colors.white,
                                  filled: true,
                                  labelText: 'Date Of Birth',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide(width: 4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  suffixIcon: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                      fontSize: 12.0, color: pinkColor)),

                              validator: (value) => value.length < 8
                                  ? 'Password must be 8 characters long'
                                  : null,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0, bottom: 6.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                                                    child: Text("Gender", style: TextStyle(
                              color: Colors.grey,
                            fontSize: 14.5,
                            fontFamily: 'ttnorms',
                            ),),
                          ),
                        ),
                        ToggleButtons(
                          // constraints: BoxConstraints(
                            
                          // ),
                          // borderColor: Colors.black,
                          fillColor: pinkColor,
                          borderWidth: 0.0,
                          // selectedBorderColor: Colors.black,
                          
                          renderBorder: true,
                          selectedColor: Colors.grey,
                          borderRadius: BorderRadius.circular(12.0),
                          textStyle: TextStyle(color: Colors.grey),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                // width: 110.0,
                                
                                width: MediaQuery.of(context).size.width *.31,
                                child: Center(
                                  child: Text(
                                    '   Man    ',
                                    style: TextStyle(fontSize: 16.5, color: isSelected[0] == true ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                
                                width: MediaQuery.of(context).size.width *.31,
                                child: Center(
                                  child: Text(
                                    'Woman',
                                    style: TextStyle(fontSize: 16, color: isSelected[1] == true ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          onPressed: (int index) {

                            setState(() {
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                          isSelected: isSelected,
                        ),


                        padding(10.0),

                        Padding(
                          padding: const EdgeInsets.only(left: 55.0, bottom: 6.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                                                    child: Text("Looking for", style: TextStyle(
                              color: Colors.grey,
                            fontSize: 14.5,
                            fontFamily: 'ttnorms',
                            ),),
                          ),
                        ),
                        ToggleButtons(
                          // constraints: BoxConstraints(
                            
                          // ),
                          // borderColor: Colors.black,
                          fillColor: pinkColor,
                          borderWidth: 0.0,
                          // selectedBorderColor: Colors.black,
                          
                          renderBorder: true,
                          selectedColor: Colors.grey,
                          borderRadius: BorderRadius.circular(12.0),
                          textStyle: TextStyle(color: Colors.grey),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                // width: 110.0,
                                
                                width: MediaQuery.of(context).size.width *.31,
                                child: Center(
                                  child: Text(
                                    '   Man    ',
                                    style: TextStyle(fontSize: 16.5, color: isSelected2[0] == true ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                
                                width: MediaQuery.of(context).size.width *.31,
                                child: Center(
                                  child: Text(
                                    'Woman',
                                    style: TextStyle(fontSize: 16, color: isSelected2[1] == true ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          onPressed: (int index) {

                            setState(() {
                              for (int i = 0; i < isSelected2.length; i++) {
                                isSelected2[i] = i == index;
                              }
                            });
                          },
                          isSelected: isSelected2,
                        ),


                      padding(12.0),
                      GestureDetector(
                        onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => AddPhoto())),
                        child: Center(
                          child: Text("Continue", style: TextStyle(
                              color: pinkColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ttnorms',
                              fontSize: 22,
                              letterSpacing: 0.5),),
                        ),
                      ),
                      padding(35.0),
                        // SizedBox(
                        //   height: 15.0,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggle() {
    setState(() {
      _switchValue = !_switchValue;
    });
  }

  padding(value) {
    return Padding(padding: EdgeInsets.all(value));
  }
}



class SwitchlikeCheckbox extends StatelessWidget {
  final bool checked;

  SwitchlikeCheckbox({this.checked});

  @override
  Widget build(BuildContext context) {
    var tween = MultiTrackTween([
      Track("paddingLeft")
          .add(Duration(milliseconds: 1000), Tween(begin: 0.0, end: 20.0)),
      Track("color").add(Duration(milliseconds: 1000),
          ColorTween(begin: Colors.grey, end: Colors.blue)),
      Track("text")
          .add(Duration(milliseconds: 500), ConstantTween("Man"))
          .add(Duration(milliseconds: 500), ConstantTween("Woman")),
      Track("rotation")
          .add(Duration(milliseconds: 1000), Tween(begin: -2 * 3.146, end: 0.0))
    ]);

    return ControlledAnimation(
      playback: checked ? Playback.PLAY_FORWARD : Playback.PLAY_REVERSE,
      startPosition: checked ? 1.0 : 0.0,
      duration: tween.duration * 1.2,
      tween: tween,
      curve: Curves.easeInOut,
      builder: _buildCheckbox,
    );
  }

  Widget _buildCheckbox(context, animation) {
    return Container(
      decoration: _outerBoxDecoration(animation["color"]),
      width: 100,
      height: 40,
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        children: [
          Positioned(
              child: Padding(
            padding: EdgeInsets.only(left: animation["paddingLeft"]),
            child: Transform.rotate(
              angle: animation["rotation"],
              child: Container(
                decoration: _innerBoxDecoration(animation["color"]),
                width: 30,
                child:
                    Center(child: Text(animation["text"], style: labelStyle)),
              ),
            ),
          ))
        ],
      ),
    );
  }

  BoxDecoration _innerBoxDecoration(color) => BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)), color: color);

  BoxDecoration _outerBoxDecoration(color) => BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border.all(
          width: 2,
          color: color,
        ),
      );

  static final labelStyle = TextStyle(
      height: 1.2,
      fontWeight: FontWeight.bold,
      fontSize: 9,
      color: Colors.white);
}
