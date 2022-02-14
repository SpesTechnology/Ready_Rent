// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Hotels extends StatelessWidget {
  const Hotels({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color:Colors.black),
      ),
      body: ListView(   
        children:[
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Carousel(
              dotSize: 5.0,
              dotSpacing: 10.0,
              images: [Image.asset(
                "assets/images/profile.jpeg",fit: BoxFit.cover,),
                Image.asset(
                "assets/images/profile.jpeg",fit: BoxFit.cover,),
                Image.asset(
                "assets/images/profile.jpeg",fit: BoxFit.cover,),
                ],
            ),
          ),  
        ],
      ),

    );
  }
}