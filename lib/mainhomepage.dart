import 'package:carousel_slider/carousel_slider.dart';
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
          fontSize: 20,
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
     body:ListView(
       children:<Widget> [
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
                   hintText:("What are you looking for?"
                   ),
                 border: OutlineInputBorder(
                   borderSide:BorderSide.none,
                 ),
                 ),
                  
                  ),
            ),
          ), 
          const SizedBox(
            height: 20,
          ),
          const Text("All adds"),

         const SizedBox(
           height: 15,
         ),
         CarouselSlider(
           items: const [
             TopSlider(
               image:"assets/images/hp1.jpeg",
               title: "What are you looking for?",
               detials: "Best hostels, apartments and buildings for all stays",
             ),

             TopSlider(
               image:"assets/images/hp2.jpeg",
               title: "What are you looking for?",
               detials: "Best hostels, apartments and buildings for all stays",
             ),

             TopSlider(
               image:"assets/images/hp3.jpeg",
               title: "What are you looking for?",
               detials: "Best hostels, apartments and buildings for all stays",
             ),

               
           ],
          options: CarouselOptions(
             height: 300.0,
             enlargeCenterPage:true,
             autoPlay: true,
             aspectRatio: 16/9,
             autoPlayCurve: Curves.fastOutSlowIn,
             enableInfiniteScroll:true,
             autoPlayAnimationDuration: const Duration(milliseconds: 800),
             viewportFraction: 0.8,
          ),
          ),
       ],
     ),
        
       
    );
  
  
   
  }
}

class TopSlider extends StatelessWidget {
  const TopSlider({
    Key? key,
    required this.image,
    required this.title,
    required this.detials,

  }) : super(key: key);

  final String image;
  final String title;
  final String detials;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(2.0),
           image: DecorationImage(
             image: AssetImage(image),
             fit: BoxFit.cover,
           ),
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment:CrossAxisAlignment.center,
           children: <Widget>[
             Text(title,
             style: const TextStyle(
               color: Colors.white,
               fontWeight:FontWeight.bold,
               fontSize: 18.0,
             ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(detials,
                 style: const TextStyle(
                 color: Colors.white,
                 fontWeight:FontWeight.bold,
                 fontSize: 14.0,
             ),
             ),
              ),
           ],
         ),
      );
  }
}

