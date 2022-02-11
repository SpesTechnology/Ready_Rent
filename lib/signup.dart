import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/welcomepage.dart';
import 'package:readyrent/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

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
             return const WelcomePage();
           },
           ),
           );
         }, icon: const Icon(Icons.arrow_back),),
          const Center(
              child: Text(
            "Create an account",
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
                          "assets/images/signup.jpg"),
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
                color:kPrimaryLightColor,
                
              ),
              child: TextFormField(
                 decoration: const InputDecoration(
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.lock),
                  ),
                   hintText:("Confirm Password"),
                 border: OutlineInputBorder(borderSide:BorderSide.none
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
                      return const Login();
                    }));
                  },
                  child: const Text('Create account',
                      style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0),
                      ),
                      ),
            ),
          ),

        ],
      ),
    );
  }
}