import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/categories/hostels.dart';
// import 'package:readyrent/login.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
          iconTheme: const IconThemeData(color:kPrimaryColor),
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("CHANGE PASSWORD",
            style: TextStyle(color:kPrimaryColor,fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            ),
          ),
          
          elevation: 0,
              ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,50.0,20.0,8.0),
          child: ListView(
            children: [
              const Text("Create New Password",
              style: TextStyle(color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
              
              ),
               const SizedBox(
              height: 30,
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
                     hintText: ("New Password"),
                   border: OutlineInputBorder(borderSide:BorderSide.none,
                   ),
                   ),
                    
                    ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                     hintText: ("Confirm Password"),
                   border: OutlineInputBorder(borderSide:BorderSide.none,
                   ),
                   ),
                    
                    ),
              ),
            ),

            const SizedBox(
              height: 30,
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
                        return const Hotels();
                      }));
                    },
                    child: const Text('Save Password',
                        style: TextStyle(
                        color:Colors.white,
                        fontSize: 20.0),
                        ),
                        ),
              ),
            ),
            ],
          ),
        ),
    );
  }
}