import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/properties/properties.dart';

class DetailsScreen extends StatelessWidget {
  final Property property;
  
   const DetailsScreen(this.property, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:kPrimaryColor,
      ),
      body:  Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        children:[
           SizedBox(
            height: 300,
            width: double.infinity,
            child: CarouselSlider(
              items: [
                 Container(
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    image:  DecorationImage(
                      image: AssetImage(property.picture),
                      fit: BoxFit.cover,
                    ),
                  ),
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
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(property.title,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          ),
          const Divider(
            height: 1,
            ),
            Container(
              color: kPrimaryLightColor,
              child:
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0,8.0,10.0,8.0),
                child: Column(
                  children: [
                     Row(
                children:const [
                 Text("Location",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(width: 100,),
                  Text("BU",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                ],
            ),
            const SizedBox(height: 20,),
             Row(
                children:const [
                 Text("Type",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(width: 100,),
                  Text("Single",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                ],
            ),
            const SizedBox(height: 20,),
             Row(
                children:const [
                 Text("Utilities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(width: 80,),
                  Text("Water and Electricity available",softWrap: false,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                ],
            ),
            const SizedBox(height: 20,),
             Row(
                children:const [
                 Text("Stay",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(width: 100,),
                  Text("For rent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                ],
            ),
            // TextButton(onPressed: (){
            //     Navigator.push(
            //     context,
            //      MaterialPageRoute(
            //        builder: (context) => DetailsScreen(property)));
            //   },
            //              child: const Text('Book ',
            //     style: TextStyle(
            //     color:Colors.black,
            //     fontSize: 15.0),
            //     ),
            // ),
                  ],
                ),
              ),
            
            ),
           
          
        ],
      ),
      ),
    );
  }
}