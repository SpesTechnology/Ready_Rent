import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/welcomepage.dart';
// import 'package:readyrent/welcomepage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    _navigatetologin();
  }

    _navigatetologin() async {
      await Future.delayed(const Duration(milliseconds: 3500),(){});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomePage()));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            height: 100,
            width: 100,
            color: Colors.white,
            ),
            const Text("Ready Rent", style:TextStyle(
              fontSize: 54,
              fontWeight:FontWeight.bold,
              color: Colors.white,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
