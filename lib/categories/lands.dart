import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/properties/property_list_screen.dart';

class Lands extends StatelessWidget {
  const Lands({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("LANDS",style: TextStyle(color: kPrimaryColor),),
        iconTheme:const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(  
        children:[
          const SizedBox(
            height: 10,
          ),
           const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Lands For Rent",style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            height: 300,
            // width: double.infinity,
            child: CarouselSlider(
              items: const [
                 TopSlider(
                    image:"assets/images/building1.jpg",
                     title: "Lands Available For Sale",
                     detials: "View All",
                 ),
                 TopSlider(
                    image:"assets/images/building2.jpg",
                     title: "Lands Available For Sale",
                     detials: "View All",
                 ),
                ], options: CarouselOptions(
                height: 290.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),  
    const SizedBox(
      height: 50,
    ),
     const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Lands For Sale",style: TextStyle(fontSize: 20),),
          ),
           SizedBox(
            height: 300,
            width: double.infinity,
            child: CarouselSlider(
              items: const[
                 BottomSlider(
                     image:"assets/images/land2.jpg",
                     title: "Lands Available For Sale",
                     detials: "View All",
                 ),
                   BottomSlider(
                     image:"assets/images/land.jpg",
                     title: "Lands Available For Sale",
                     detials: "View All",
                 ),
                ], options: CarouselOptions(
                height: 290.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
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
     // margin: const EdgeInsets.all(1.0),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(2.0),
       image:  DecorationImage(
         image: AssetImage(image),
         fit: BoxFit.cover,
       ),
     ),
     child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.fromLTRB(70.0,8.0,70.0,8.0),
               child: Text(title,
               style:const TextStyle(
    color: Colors.white,
    fontWeight:FontWeight.bold,
    fontSize: 20.0,
               ),
               ),
             ),
               Padding(
                padding:  const EdgeInsets.all(8.0),
                child:  Container(
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5.0),
               color: Colors.white,
              ),
              child: TextButton(
              onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:(context){
               return const PropertyListScreen();
             }));
         }, child:  Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(detials,
           style: const TextStyle(fontSize: 14,color: Colors.black),),
         ),
           ),
         ),
              ),
           ],
         ),
                );
  }
}

class BottomSlider extends StatelessWidget {
  const BottomSlider({
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
     margin: const EdgeInsets.all(1.0),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(2.0),
       image:  DecorationImage(
         image: AssetImage(image),
         fit: BoxFit.cover,
       ),
     ),
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.fromLTRB(70.0,8.0,70.0,8.0),
               child: Text(title,
               style:const TextStyle(
    color: Colors.white,
    fontWeight:FontWeight.bold,
    fontSize: 20.0,
               ),
               ),
             ),
               Padding(
                padding:  const EdgeInsets.all(8.0),
                child:  Container(
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5.0),
         color: Colors.white,
              ),
              child: TextButton(
     onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:(context){
               return const PropertyListScreen();
             }));
         }, child:  Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(detials,
           style: const TextStyle(fontSize: 14,color: Colors.black),),
         ),
           ),
         ),
              ),
           ],
         ),
                );
  }
}