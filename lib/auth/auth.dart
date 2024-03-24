
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/home_page.dart';
import 'package:loginpage/login_page.dart';

class AuthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          //user is logged in
          if(snapshot.hasData){
            return HomePage();
          }
          //user is not looged in
          else{
            return LoginPage();
          }
        },
      ),
    );
  }

}