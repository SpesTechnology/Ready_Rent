import 'package:flutter/material.dart';
import 'package:readyrent/categories/apartments.dart';
import 'package:readyrent/categories/buildings.dart';
import 'package:readyrent/categories/lands.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/categories/hostels.dart';

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color:kPrimaryColor),
        title: const Text("CATEGORIES",style: TextStyle(color: kPrimaryColor),),
        ),


      body:  ListView(   
        children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card( 
              elevation: 10,
              clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), topLeft:  Radius.circular(40)) ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(15),
                    ),
                    Ink.image(image: const AssetImage("assets/images/hostel.png"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                    Padding(
                      padding:  const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                      child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
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
                      ),)
                  ],
                ), 
              ),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card( 
              elevation: 10,
              clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), topLeft:  Radius.circular(40)) ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(15),
                    ),
                    Ink.image(image: const AssetImage("assets/images/building.jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                     Padding(
                      padding:  const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                      child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
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
                      ),)
                  ],
                ), 
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card( 
              elevation: 10,
              clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), topLeft:  Radius.circular(40)) ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(15),
                    ),
                    Ink.image(image: const AssetImage("assets/images/apartment.jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                   Padding(
                      padding:  const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                      child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
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
                      ),)
                  ],
                ), 
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card( 
              elevation: 10,
              clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), topLeft:  Radius.circular(40)) ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(15),
                    ),
                    Ink.image(image: const AssetImage("assets/images/landcat.jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                    Padding(
                      padding:  const EdgeInsets.fromLTRB(40.0,8.0,20.0,8.0),
                      child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
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
                      ),)
                  ],
                ), 
              ),
          ),  
        ],
      ),
      
    );
  }
}