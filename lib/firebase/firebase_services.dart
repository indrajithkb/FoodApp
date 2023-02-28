import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodieapp/firebase/emailVerify.dart';
import 'package:foodieapp/homeScreen/view/screens/screenHome.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:the_apple_sign_in/the_apple_sign_in.dart';

class FirebaseServ {
  final _googleSignIn = GoogleSignIn();
  String errorMsg = '';

//user login
  signInUser(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print("logIn");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenHome(),
            ));
      });
      errorMsg = '';
    } on FirebaseAuthException catch (logInErr) {
      errorMsg = logInErr.message!;
      print(errorMsg);
      Fluttertoast.showToast(msg: errorMsg);
    }
  }

//user SignUp

  createUser(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)

          //await sendEmailVerification(context);
          .then((value) {
        //Fluttertoast.showToast(msg: 'Account created successfully');
        print("acc created successfully");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EmailVerifyScreen(),
            ));
      });

      errorMsg = '';
    } on FirebaseAuthException catch (signUpErr) {
      errorMsg = signUpErr.message!;
      print(errorMsg);
      Fluttertoast.showToast(msg: errorMsg);
    }
  }

//google SignIn

  // Future<UserCredential?> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   try {
  //     final GoogleSignInAccount? googleUser = await (GoogleSignIn().signIn());

  //     // Obtain the auth details from the request
  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser!.authentication;

  //     // Create a new credential
  //     final GoogleAuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     ) as GoogleAuthCredential;

  //     // Once signed in, return the UserCredential

  //     return await FirebaseAuth.instance.signInWithCredential(credential);
  //    // errorMsg = '';
  //   } on FirebaseAuthException catch (googleSignInErr) {
  //     errorMsg = googleSignInErr.message!;
  //     Fluttertoast.showToast(msg: errorMsg);
  //   }
  // }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;
        if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
            idToken: googleAuth?.idToken,
          );

          UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
           return userCredential;

          // if(userCredential.user !=null){
          //   if(userCredential.additionalUserInfo!.isNewUser){
          //     //signup data storing
          //   }
          //   else{
          //     //login processes
          //   }
          // }

        }else{
          print("null");
        }

    errorMsg = '';
  } on FirebaseAuthException catch (googleSignInErr) {

    errorMsg = googleSignInErr.message!;
    Fluttertoast.showToast(msg: errorMsg);
  }
  }

//resetpassword
  Future<void> resetPassword({required String email}) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) {
        Fluttertoast.showToast(msg: "We have sent email to recover password");
      });
    } on FirebaseAuthException catch (resetPasswdErr) {
      errorMsg = resetPasswdErr.message!;
      Fluttertoast.showToast(msg: errorMsg);
    }
  }

  //facebookLogin

  Future<UserCredential?> signInWithFacebook() async {
    // Trigger the sign-in flow
    try {    

      final LoginResult loginResult = await FacebookAuth.instance.login();
      print(loginResult.status);

      // Create a credential from the access token
      if (loginResult.accessToken != null) {
        print("fb");
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(loginResult.accessToken!.token);
        // Once signed in, return the UserCredential
        return await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
      } else {
        print("nullll");
      }
    } on FirebaseAuthException catch (fbErr) {
      errorMsg = fbErr.message!;
      Fluttertoast.showToast(msg: errorMsg);
    }      

  }

  signOut() async {
    await _googleSignIn.signOut();
    await FirebaseAuth.instance.signOut();
  }

  //apple signIN
  
  
  String generateNonce([int length = 32]) {
  final charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  return List.generate(length, (_) => charset[random.nextInt(charset.length)])
      .join();
}

/// Returns the sha256 hash of [input] in hex notation.
String sha256ofString(String input) {
  final bytes = utf8.encode(input);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

Future<UserCredential?> signInWithApple() async {
  // To prevent replay attacks with the credential returned from Apple, we
  // include a nonce in the credential request. When signing in with
  // Firebase, the nonce in the id token returned by Apple, is expected to
  // match the sha256 hash of `rawNonce`.
  
  try {
    final rawNonce = generateNonce();
  final nonce = sha256ofString(rawNonce);

  // Request credential for the currently signed in Apple account.

           
  final appleCredential = await SignInWithApple.getAppleIDCredential(
    scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName,
      
    ],
    
    nonce: nonce,
  );
    print(appleCredential);  
  if(appleCredential!=null){
    debugPrint(appleCredential.email);
// Create an `OAuthCredential` from the credential returned by Apple.
  final oauthCredential = OAuthProvider("apple.com").credential(
    idToken: appleCredential.identityToken,
    rawNonce: rawNonce,
  );

  // Sign in the user with Firebase. If the nonce we generated earlier does
  // not match the nonce in `appleCredential.identityToken`, sign in will fail.
  return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }else{
    debugPrint("apple null");
  }
  
  } on FirebaseAuthException catch (fbErr) {
      errorMsg = fbErr.message!;
      Fluttertoast.showToast(msg: errorMsg);
    }      
  
}


}
