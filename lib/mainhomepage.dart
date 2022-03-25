import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/categories/apartments.dart';
import 'package:readyrent/categories/buildings.dart';
import 'package:readyrent/categories/hostels.dart';
import 'package:readyrent/categories/lands.dart';
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
            height: 10,
          ),
         Column(
           children: [
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
                 height: 290.0,
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
         Column(
           children:  [
             const Text("Choose Catergory to browse"),
             Container(
        color:Colors.white,
        child: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: (GridView(
               shrinkWrap: true,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10, 
              ),
            children: [
              Card(
                elevation:7,
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                ),
                 child: TextButton(
                    onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return const Hostels();
                            }));
                        }, child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("HOSTELS",style:TextStyle(fontSize: 24,color: Colors.black),),
                        ),
                          ),
                        ),
                ),
              ),
              Card(
                elevation:7,
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                ),
                 child: TextButton(
                    onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return const Buildings();
                            }));
                        }, child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("BUILDINGS",style:TextStyle(fontSize: 24,color: Colors.black),),
                        ),
                          ),
                        ),
                ),
              ),
              Card(
                elevation:7,
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                ),
                 child: TextButton(
                    onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return const Apartments();
                            }));
                        }, child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("APARTMENTS",style:TextStyle(fontSize: 24,color: Colors.black),),
                        ),
                          ),
                        ),),
              ),
              Card(
                elevation: 7,
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                ),
                 child: TextButton(
                    onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return const Lands();
                            }));
                        }, child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("LANDS",style:TextStyle(fontSize: 24,color: Colors.black),),
                        ),
                          ),
                        ),),
              ),
            ],
              )),
                ),
            ),
           ],
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
    return ListView(
      children:[
            Container(
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
                 Padding(
                   padding: const EdgeInsets.fromLTRB(75.0,8.0,75.0,8.0),
                   child: Text(title,
                   style: const TextStyle(
                     color: Colors.white,
                     fontWeight:FontWeight.bold,
                     fontSize: 18.0,
                   ),
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
          ),
         
        ],
    );
  }
}

