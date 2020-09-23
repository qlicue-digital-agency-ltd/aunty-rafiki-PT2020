import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ProfileScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // Initialize FlutterFire
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Center(
                child: Container(
              child: Text('Something is wrong'),
            ));
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            FirebaseAuth auth = FirebaseAuth.instance;
            auth.verifyPhoneNumber(
                phoneNumber: "+255714085613",
                verificationCompleted: null,
                verificationFailed: null,
                codeSent: null,
                codeAutoRetrievalTimeout: null);
            return Center(
                child: Container(
              child: Text('Profile Screen'),
            ));
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return Center(
              child: Container(
            child: CircularProgressIndicator(),
          ));
        });
  }

 
}
