import 'package:congle/Auxiliary/app_bar.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';
import 'package:flutter/material.dart';

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
      body: Center(
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
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: continueButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  profilePic() {
    return Stack(
      children: [
        Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
                // color: pinkColor,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset('assets/logo.png'))),
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
            onPressed: () {},
            child: Text("Continue",
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
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            "Interests",
            style: TextStyle(
              fontSize: 20.0,
              color: pinkColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'ttnorms',
            ),
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0)),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: displayWidth(context) / 5,
                height: 30.0,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      sports = !sports;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: pinkColor)),
                  color: sports ? pinkColor : Colors.white,
                  child: Text(
                    "Sports",
                    style: TextStyle(
                        color: sports ? Colors.white : pinkColor,
                        fontSize: 12.0),
                  ),
                ),
              ),
              Container(
                width: displayWidth(context) / 5,
                height: 30.0,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      books = !books;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: pinkColor)),
                  color: books ? pinkColor : Colors.white,
                  child: Text(
                    "Books",
                    style: TextStyle(
                        color: books ? Colors.white : pinkColor,
                        fontSize: 12.0),
                  ),
                ),
              ),
              Container(
                width: displayWidth(context) / 4.5,
                height: 30.0,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      travelling = !travelling;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: pinkColor)),
                  color: travelling ? pinkColor : Colors.white,
                  child: Text(
                    "Travelling",
                    style: TextStyle(
                        color: travelling ? Colors.white : pinkColor,
                        fontSize: 12.0),
                  ),
                ),
              ),
              Container(
                width: displayWidth(context) / 5,
                height: 30.0,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      dogs = !dogs;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: pinkColor)),
                  color: dogs ? pinkColor : Colors.white,
                  child: Text(
                    "Dogs",
                    style: TextStyle(
                        color: dogs ? Colors.white : pinkColor, fontSize: 12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // interests() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.only(left: 35.0),
  //         child: Text(
  //           "Interests",
  //           style: TextStyle(
  //             fontSize: 20.0,
  //             color: pinkColor,
  //             fontWeight: FontWeight.bold,
  //             fontFamily: 'ttnorms',
  //           ),
  //         ),
  //       ),
  //       Padding(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0)),
  //       SafeArea(
  //         child: Column(

  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Container(
  //                   width: displayWidth(context) / 5,
  //                   height: 30.0,
  //                   child: FlatButton(
  //                     onPressed: () {
  //                       setState(() {
  //                         sports = !sports;
  //                       });
  //                     },
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(12.0),
  //                         side: BorderSide(color: pinkColor)),
  //                     color: sports ? pinkColor : Colors.white,
  //                     child: Text(
  //                       "Sports",
  //                       style: TextStyle(
  //                           color: sports ? Colors.white : pinkColor,
  //                           fontSize: 12.0),
  //                     ),
  //                   ),
  //                 ),
  //                 Container(
  //                   width: displayWidth(context) / 4.5,
  //                   height: 30.0,
  //                   child: FlatButton(
  //                     onPressed: () {
  //                       setState(() {
  //                         books = !books;
  //                       });
  //                     },
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(12.0),
  //                         side: BorderSide(color: pinkColor)),
  //                     color: books ? pinkColor : Colors.white,
  //                     child: Text(
  //                       "Books",
  //                       style: TextStyle(
  //                           color: books ? Colors.white : pinkColor,
  //                           fontSize: 14.0),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),

  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [

  //             Container(
  //               width: displayWidth(context) / 4.5 ,
  //               height: 30.0,
  //               child: FlatButton(
  //                 onPressed: (){
  //                 setState(() {
  //                   travelling = !travelling;
  //                 });
  //               },
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(12.0),
  //                 side: BorderSide(color: pinkColor)
  //               ),
  //               color: travelling ? pinkColor : Colors.white,
  //               child: Text("Travelling", style: TextStyle(color: travelling ? Colors.white : pinkColor, fontSize: 12.0),),
  //               ),
  //             ),

  //             Container(
  //               width: displayWidth(context) / 4.5 ,
  //               height: 30.0,
  //               child: FlatButton(
  //                 onPressed: (){
  //                 setState(() {
  //                   dogs = !dogs;
  //                 });
  //               },
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(12.0),
  //                 side: BorderSide(color: pinkColor)
  //               ),
  //               color: dogs ? pinkColor : Colors.white,
  //               child: Text("Dogs", style: TextStyle(color: sports ? Colors.white : pinkColor, fontSize: 14.0),),
  //               ),
  //             ),

  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

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
                  borderRadius: BorderRadius.circular(20),
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
}
