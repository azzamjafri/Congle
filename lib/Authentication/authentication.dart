import 'package:firebase_auth/firebase_auth.dart';



// import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;




User user;

class AuthService {

  // final GoogleSignIn googleSignIn = GoogleSignIn();
  

  // handleAuth() {
  //   return StreamBuilder(
  //     stream: FirebaseAuth.instance.onAuthStateChanged,
  //     builder: (BuildContext context, snapshot){
  //       if(snapshot.hasData)

  //         return HomeScreen();
  //       else

  //         return LoginPage();
  //     }, 
  //   );
  // }





  // Google OAuth
  // signInWithGoogle() async {
  //   final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  //   final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);

  //   final UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(credential);
  //   final FirebaseUser userR = authResult.user;
  //   assert(!userR.isAnonymous);
  //   assert(await userR.getIdToken() != null);

  //   final FirebaseUser currentUser = await FirebaseAuth.instance.currentUser();
  //   assert(userR.uid == currentUser.uid);
  //   // print(currentUser.uid + '*****************************');
  //   user = userR;
  // }

  // Google OAuth signout
  // signOutGoogle() async {
  //   await googleSignIn.signOut();
    
  // }

  // signIn
  signIn(AuthCredential credential) {
    FirebaseAuth.instance.signInWithCredential(credential).whenComplete(() async {
      
      user = await FirebaseAuth.instance.currentUser;
    });
    
  }

  // signOut
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  // OTP Sign in
  signWithOTP(smsCode, verificationId) async {
    try{
      AuthCredential authCredential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
      await signIn(authCredential);
      user = await FirebaseAuth.instance.currentUser;
    }catch(error) {
      print(error.toString() + " ___________________________");
    }
  }


  // Email Sign up
  signUpWithEmail(String email, String password) async {
    UserCredential auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    // user = auth.user;
  }

  // Email Verification
  sendEmailVerification() async {
    User usr = await FirebaseAuth.instance.currentUser;
    usr.sendEmailVerification();
    
  }


  // Email Sign in
  signInWithEmail(String email, String password) async {
    
    UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    // return await result.user;
    user = result.user;
  }
}