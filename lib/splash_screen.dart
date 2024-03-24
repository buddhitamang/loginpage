
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));

    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.blue.shade50,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           CircleAvatar(
             backgroundImage: AssetImage('assets/images/avatar.jpg'),
             maxRadius: 60,


           ),
           Text('My Demo App',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,),),
           CircularProgressIndicator()

         ],
       ),
     )


   );
  }
}