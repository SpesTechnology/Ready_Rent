import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/properties/properties.dart';
import 'package:readyrent/properties/property_details_screen.dart';
// import 'package:readyrent/search.dart';

class PropertyListScreen extends StatelessWidget {
  const PropertyListScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        iconTheme: const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Properties",style: TextStyle(color: kPrimaryColor),),
      ),
      body: ListView.builder(
        
        itemCount: propertyList.length,
        itemBuilder: (context, index) {
        Property property = propertyList[index];
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            child: ListTile(
              leading:Image.asset(property.picture),
              title: Text(property.title),
              subtitle: Column(
                children: [
                  Text(property.details),
                  Row(
                    children: [
                        Icon(property.icon,size: 15,),
                        Text(property.description)
                    ],
                  )
                  
                ],
              ),
              trailing: TextButton(onPressed: (){
                  Navigator.push(
                  context,
                   MaterialPageRoute(
                     builder: (context) => DetailsScreen(property)));
                },
                           child: const Text('View detials',
                  style: TextStyle(
                  color:Colors.black,
                  fontSize: 15.0),
                  ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(
                     builder: (context) => DetailsScreen(property)));
              },
            
            ),
          ),
        );
      },),
    );
  }
}