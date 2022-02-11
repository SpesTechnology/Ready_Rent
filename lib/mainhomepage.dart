import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color:kPrimaryColor),
        title: const Text("Hello there!",
        style:TextStyle(
          color: kPrimaryColor,
          fontSize: 24,
        ),),
        actions:const [
             Icon(
            Icons.notifications_outlined,
            color:kPrimaryColor,
          ),
           SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpeg"),
             ),
              SizedBox(
            width: 15,
          ),      
        ],
      ),
      body:  Container(
        color:Colors.white,
        child: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: (GridView(
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10, 
              ),
            children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kPrimaryColor),
              child: Column(children:const[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.doc_text_search,size: 50,color: Colors.white,),
              ),
              Text("Search Vacancy",style: TextStyle(color:Colors.white),),
              ]),
              ),
              
            ], 
              )),
          ), 
           
        ),
       
    );
  }
}