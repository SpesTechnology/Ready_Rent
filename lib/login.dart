// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/bottomnavigation.dart';
import 'package:readyrent/constant.dart';
// import 'package:readyrent/mainhomepage.dart';
// import 'package:readyrent/mainhomepage.dart';
import 'package:readyrent/signup.dart';


class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
         IconButton(onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){
             return const SignUp();
           },
           ),
           );
         }, icon: const Icon(Icons.arrow_back),),
          const Center(
              child: Text(
            "Login",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, 
                color: kPrimaryColor,
                ),
          )),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 250.0,
              height: 250.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage(
                          "assets/images/login.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
             padding:  const EdgeInsets.fromLTRB(40.0,8.0,40.0,8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color:kPrimaryLightColor,
                
              ),
              child: TextFormField(
                 decoration: const InputDecoration(
                   icon: Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Icon(Icons.person),
                   ), 
                  hintText: ("Phone or Email"),
                 border: OutlineInputBorder(
                   borderSide:BorderSide.none,
                 ),
                 ),
                  
                  ),
            ),
          ),
         const SizedBox(
            height: 15,
          ),
            Padding(
             padding:  const EdgeInsets.fromLTRB(40.0,8.0,40.0,8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color:kPrimaryLightColor,
                
              ),
              child: TextFormField(
                 decoration: const InputDecoration(
                   icon: Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Icon(Icons.lock),
                   ),
                   hintText: ("Password"),
                 border: OutlineInputBorder(borderSide:BorderSide.none,
                 ),
                 ),
                  
                  ),
            ),
          ),
        
         const SizedBox(
           height:15,
          ),
          Padding(
            padding:  const EdgeInsets.fromLTRB(40.0,8.0,40.0,8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: kPrimaryColor,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const MyBottomNavigationBar();
                    }));
                  },
                  child: const Text('Login',
                      style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0),
                      ),
                      ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50.0,8.0,40.0,8.0),
         child: Center(
              child: RichText(
                   text:  const TextSpan(
                        text: 'Don\'t have an account?', 
                        style: TextStyle(color: Colors.black, fontSize: 15),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Sign up',
                                 style: TextStyle(color: Colors.blueAccent,
                                  fontSize: 15,
                  //                 recognizer:TapGestureRecognizer()
                  //   ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                  // },
                              ),
                      ),
                     ]
                  ),
                ),
             ),
           ),
        ],
      ),
    );
  }
}