import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/categories/lands.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/hostels/sharedhostels.dart';


class DetailsScreen extends StatelessWidget {
  final SharedHostel sharedHostel;
  
   const DetailsScreen(this.sharedHostel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Detials",style:TextStyle(color: kPrimaryColor)
      ),),
      body:  Padding(padding: const EdgeInsets.all(1.0),
      child: ListView(
        children: 
          [Column(
            children:[  
              const Text("Description",style: TextStyle(fontSize: 24, color:Colors.black),), 
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
                          image: AssetImage(sharedHostel.picture),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ], options: CarouselOptions(
                    height: 250.0,
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
                child: Text(sharedHostel.title,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              ),
              const Divider(
                height: 1,
                ),
                Container(
                  color: kPrimaryLightColor,
                  child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0,8.0,10.0,8.0),
                    child: Column(
                      children: [
                        const Text("GHC 1200 per person",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        const Divider(height: 5, color:Colors.black),
                        const SizedBox(height: 10,),
                         Row(
                    children:const [
                     Text("Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     SizedBox(width: 100,),
                      Text("BU",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                    ],
                ),
                const SizedBox(height: 10,),
                 Row(
                    children:const [
                     Text("Property Type",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     SizedBox(width: 100,),
                      Text("Hostel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                    ],
                ),
                const SizedBox(height: 10,),
                 Row(
                    children:const [
                     Text("Utilities",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     SizedBox(width: 70,),
                      Text("Water and Electricity available",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                    ],
                ),
                const SizedBox(height: 10,),
                 Row(
                    children:const [
                     Text("Stay",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     SizedBox(width: 100,),
                      Text("For rent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                    ],
                ),
                 const SizedBox(height: 10,),
                Row(
                    children:const [
                     Text("Furnishing",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     SizedBox(width: 100,),
                      Text("unfurnished",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                    ],
                ),
                 const SizedBox(height: 10,),
                Row(
                    children:const [
                     Text("Condition",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     SizedBox(width: 100,),
                      Text("Fairly Used",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)
                    ],
                ),
                      ],
                    ),
                  ), 
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                  child: Row(
                    children: [
                        Padding(
                            padding:  const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                            child: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: kPrimaryColor,
                    ),
                    child: TextButton(
                        onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return const Lands();
                                }));
                            }, child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text("BOOK",style:TextStyle(fontSize: 24,color: Colors.white),),
                            ),
                              ),
                            ),),
                                           
                             Padding(
                            padding:  const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                            child: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: kPrimaryColor,
                    ),
                    child: TextButton(
                        onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return const Lands();
                                }));
                            }, child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text("ENQUIRE",style:TextStyle(fontSize: 24,color: Colors.white),),
                            ),
                              ),
                            ),)
                    ],),
                ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
