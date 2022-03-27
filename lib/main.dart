import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/welcomepage.dart';
import 'package:responsive_framework/responsive_framework.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart'; 



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!), breakpoints:const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ]
      ),
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

