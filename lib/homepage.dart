// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
       actions: const [
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
         title: const Text("Hello Name!",
         style: TextStyle(color: kPrimaryColor,
         fontSize:24,
         ),
         
         ),
      ),
      body:
      // Container(
      //   color:Colors.white,
      //   child: Padding(
      //   padding:  const EdgeInsets.all(8.0),
      //   child: (GridView(
      //          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         mainAxisSpacing: 10,
      //         crossAxisSpacing: 10, 
      //         ),
      //       children: [
      //         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kPrimaryColor),
      //         child: Column(children:const[
      //         Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Icon(CupertinoIcons.doc_text_search,size: 50,color: Colors.white,),
      //         ),
      //         ]),
      //         ),
      //         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kPrimaryColor),
      //         child: Column(children:const[
      //         Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Icon(CupertinoIcons.doc_text_search,size: 50,color: Colors.white,),
      //         ),
      //         ]),
      //         ),
      //         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kPrimaryColor),
      //         child: Column(children:const[
      //         Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Icon(CupertinoIcons.star_circle_fill,size: 70,color: Colors.white,),
      //         ),
      //         ]),),
      //         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kPrimaryColor),
      //         child: Column(children:const[
      //         Padding(
      //           padding: EdgeInsets.fromLTRB(0.0,8.0,40.0,8.0),
      //           child: Icon(CupertinoIcons.money_dollar_circle_fill,size: 70,color: Colors.white,),
      //         ),
      //         ]),),
      //       ], 
           
      //         )),
      // ),
     
      
      //       ),
            
      ListView(
        children: [
           Padding(
             padding:  const EdgeInsets.fromLTRB(40.0,8.0,40.0,8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color:kPrimarySearch,
                
              ),
              child: TextFormField(
                 decoration: const InputDecoration(
                   icon: Padding(
                     padding: EdgeInsets.fromLTRB(7.0,8.0,0.0,8.0),
                     child: Icon(Icons.search),
                   ),
                   label: Text("What are you looking for?",
                   style: TextStyle(fontSize: 20,),
                   textAlign: TextAlign.start,
                   ),
                 border: OutlineInputBorder(
                   borderSide:BorderSide.none,
                 ),
                 ),
                  
                  ),
            ),
          ), 
        //  const SizedBox(
        //     height: 50,
        //   ),
        // Padding(padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     color: Colors.white,
        //     child: (GridView(gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       mainAxisSpacing: 10,
        //       crossAxisSpacing: 10, 
        //       ),
        //       children: [
        //         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kPrimaryColor),
  
        //         child: Column(children:const[
        //         Padding(
        //         padding: EdgeInsets.all(8.0),
        //         child: Icon(CupertinoIcons.doc_text_search,size: 50,color: Colors.white,),
        //       ),
        //       ]),
        //       ),
        //       ],
        //       )
        //       ),
        //   ),
        // ),
        ] 
        
      ),
    
    );
  }
}