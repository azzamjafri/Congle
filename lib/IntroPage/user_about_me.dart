import 'package:congle/Auxiliary/app_bar.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:congle/HomePage/home_page.dart';
import 'package:flutter/material.dart';

bool choose = false;
// Widget currentPage;

class UserAboutMe extends StatefulWidget {
  @override
  _UserAboutMeState createState() => _UserAboutMeState();
}

class _UserAboutMeState extends State<UserAboutMe> {
  TextEditingController aboutMeController = new TextEditingController();
  bool sports, books, travelling, dogs;

  @override
  void initState() {
    super.initState();
    sports = false;
    books = false;
    travelling = false;
    dogs = false;
  }

  @override
  Widget build(BuildContext context) {
    double height = displayHeight(context);
    double width = displayWidth(context);

    return new Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(height * .150), child: MyAppBar()),
        body: choose ? interestsMainPage() : aboutme());
  }

  // INTERESTS STARTS HERE ***************************

  interestsMainPage() {
    return Hero(
        tag: 'interests',
        child: WillPopScope(
          onWillPop: () {
            setState(() {
              choose = !choose;
            });
            return null;
          },
                  child: Container(
              height: MediaQuery.of(context).size.height,
              // height: 200.0,
              child: Material(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() => choose = !choose);
                          },
                        ),
                        Text(
                          "Interests",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: pinkColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ttnorms',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Select min 4",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontFamily: 'ttnorms',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0, bottom: 20.0)),
                  Column(
                    children: [
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tags('Sports'),
                            tags('Books'),
                            tags('Travelling', 12.5),
                            tags('Dogs'),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tags('Cooking'),
                            tags('Dancing'),
                            tags('Photography', 11.0),
                            tags('Art'),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tags('Exercise'),
                            tags('Sneakers'),
                            tags('Cats'),
                            tags('Dogs'),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tags('Movies'),
                            tags('Books'),
                            tags('Roadtrips', 13.0),
                            tags('Drinks'),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tags('Tea'),
                            tags('House parties', 11.0),
                            tags('Comedy'),
                            tags('Fashion'),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tags('Poetry'),
                            tags('Cricket'),
                            tags('Football'),
                            tags('Chai Sutta', 13.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Padding(padding: const EdgeInsets.only(top: 15.0, bottom: 35),),
                  
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Transform.translate(
                      offset: Offset(-(MediaQuery.of(context).size.width) / 10, 50),
                      child: Container(
                          decoration: BoxDecoration(
                              color: pinkColor,
                              borderRadius: BorderRadius.all(Radius.circular(12))),
                          height: 45.0,
                          width: MediaQuery.of(context).size.width * .8,
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              child: Text("Continue",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.6,
                                    fontFamily: 'ttnorms',
                                  )))),
                    ),
                  ),
                ],
              ))),
        ));
  }

  tags(String tag, [double size = 14.0]) {
    bool temp = false;
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 2.0, right: 2.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            // temp = !temp;
            if(temp)
              temp = false;
            else
              temp = true;
            print(temp.toString());
          });
        },
        child: Container(
          width: displayWidth(context) / 5.5,
          height: 30.0,
          decoration: BoxDecoration(
              color: temp ? pinkColor : Colors.transparent,
              // color: Colors.transparent,
              border: Border.all(color: pinkColor),
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Center(
            child: Text(
              "$tag",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: temp ? Colors.white : pinkColor,
                  // color: pinkColor,
                  fontSize: size),
            ),
          ),
        ),
      ),
    );
  }

  // INTERESTS END HERE #######################

  // ABOUT ME MAIN PAGE *************************************
  aboutme() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
              child: profilePic(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.0, bottom: 10.0),
              child: aboutMe(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: interests(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: hereFor(),
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
                          child: Transform.translate(
                            offset: Offset(-(MediaQuery.of(context).size.width) / 10, 5),
                                                      child: Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: continueButton(),
              ),
                          ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
          ],
        ),
      ),
    );
  }

  // ABOUT ME DUNCTINOS ***********************************
  profilePic() {
    return Stack(
      children: [
        Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                // color: pinkColor,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(120.0),
                child: Image.asset('assets/icons/facebook_icon.png'))),
        Positioned(
          top: 85.0,
          left: 85.0,
          child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                // border: Border.all(color: Colors.white, width: 1.2)
              ),
              child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        size: 20.0,
                        color: pinkColor,
                      )))),
        ),
      ],
    );
  }

  continueButton() {
    return Container(
        decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: 45.0,
        width: MediaQuery.of(context).size.width * .8,
        child: FlatButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("Save",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                  fontFamily: 'ttnorms',
                ))));
  }

  interests() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Interests",
                style: TextStyle(
                  fontSize: 20.0,
                  color: pinkColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ttnorms',
                ),
              ),
              Hero(
                tag: 'interests',
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Interests()));
                    setState(() {
                      choose = !choose;
                      // currentPage = Interests();
                      // this.widget.callback(new Interests(this.callback));
                    });
                  },
                  child: Text(
                    "Choose",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontFamily: 'ttnorms',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0)),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    sports = !sports;
                  });
                },
                child: Container(
                  width: displayWidth(context) / 5.5,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: sports ? pinkColor : Colors.transparent,
                      border: Border.all(color: pinkColor),
                      borderRadius: BorderRadius.all(Radius.circular(6.5))),
                  child: Center(
                    child: Text(
                      "Sports",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: sports ? Colors.white : pinkColor,
                          fontSize: 14.0),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 3.0, right: 3.0)),
              GestureDetector(
                onTap: () {
                  setState(() {
                    books = !books;
                  });
                },
                child: Container(
                  width: displayWidth(context) / 5.5,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: books ? pinkColor : Colors.transparent,
                      border: Border.all(color: pinkColor),
                      borderRadius: BorderRadius.all(Radius.circular(6.5))),
                  child: Center(
                    child: Text(
                      "Books",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: books ? Colors.white : pinkColor,
                          fontSize: 14.0),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 3.0, right: 3.0)),
              GestureDetector(
                onTap: () {
                  setState(() {
                    travelling = !travelling;
                  });
                },
                child: Container(
                  width: displayWidth(context) / 5.5,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: travelling ? pinkColor : Colors.transparent,
                      border: Border.all(color: pinkColor),
                      borderRadius: BorderRadius.all(Radius.circular(6.5))),
                  child: Center(
                    child: Text(
                      "Travelling",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: travelling ? Colors.white : pinkColor,
                          fontSize: 13.6),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 3.0, right: 3.0)),
              GestureDetector(
                onTap: () {
                  setState(() {
                    dogs = !dogs;
                  });
                },
                child: Container(
                  width: displayWidth(context) / 5.5,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: dogs ? pinkColor : Colors.transparent,
                      border: Border.all(color: pinkColor),
                      borderRadius: BorderRadius.all(Radius.circular(6.5))),
                  child: Center(
                    child: Text(
                      "Dogs",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: dogs ? Colors.white : pinkColor,
                          fontSize: 14.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  hereFor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "I am here for ",
          style: TextStyle(
            fontSize: 20.0,
            color: pinkColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'ttnorms',
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0)),
        Container(
          width: MediaQuery.of(context).size.width * .8,
          height: 70.0,
          child: TextFormField(
            // maxLines: 1,
            controller: aboutMeController,

            enableInteractiveSelection: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: pinkColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                hintText: "Serious relationship",
                hintStyle: TextStyle(
                  fontSize: 15.0,
                  color: pinkColor,
                  fontFamily: 'ttnorms',
                )),

            validator: (value) =>
                value.isEmpty ? 'Please write your purpose' : null,
          ),
        ),
      ],
    );
  }

  aboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About me",
          style: TextStyle(
            fontSize: 20.0,
            color: pinkColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'ttnorms',
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0)),
        Container(
          width: MediaQuery.of(context).size.width * .8,
          child: TextFormField(
            maxLines: 3,
            controller: aboutMeController,
            enableInteractiveSelection: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: pinkColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                hintText:
                    "I like video games but I don't have much time to play. Really like travelling and crafted beer. I have 3 cats so ... be nice for them",
                hintStyle: TextStyle(
                  fontSize: 15.0,
                  color: pinkColor,
                  fontFamily: 'ttnorms',
                )),
            validator: (value) =>
                value.isEmpty ? 'Please write something about yourself' : null,
          ),
        ),
      ],
    );
  }

  // ABOUT ME ENDS HERE ######################
}
