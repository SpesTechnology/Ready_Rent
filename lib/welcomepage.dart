// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/login.dart';
import 'package:readyrent/signup.dart';
import 'package:readyrent/test.dart';
import 'package:readyrent/testsignup.dart';
// import 'package:  responsive_framework/responsive_framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
              child: Text(
            "Welcome to Ready Rent",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          )),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/loginimage.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: kPrimaryColor,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: kPrimaryLightColor,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUp();
                  }));
                },
                child: const Text(
                  'SIGNUP',
                  style: TextStyle(color: kPrimarySignUp, fontSize: 20.0),
                ),
              ),
            ),
          ),
          // Padding(
          //    padding:  const EdgeInsets.fromLTRB(40.0,8.0,40.0,8.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15.0),
          //       color:kPrimaryLightColor,
          //     ),
          //     child: TextFormField(
          //        decoration:  const InputDecoration(
          //          icon: Padding(
          //            padding:  EdgeInsets.all(8.0),
          //            child: Icon(Icons.lock),
          //          ),
          //         hintText: ("Sign in Google"),
          //        border: OutlineInputBorder(
          //          borderSide:BorderSide.none,
          //        ),
          //        ),

          //         ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
