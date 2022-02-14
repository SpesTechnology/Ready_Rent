import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:readyrent/constant.dart';
import 'package:readyrent/welcomepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ready Rent', 
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
       home: AnimatedSplashScreen(
         backgroundColor: Colors.white,
         splash: "assets/images/logo.png",
         nextScreen:const WelcomePage(),
        //  splashTransition: SplashTransition.slideTransition,
         ),
         
    );
  }
}

