import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/hostels/singlehostel_details_screen.dart';
import 'package:readyrent/hostels/singlehostels.dart';


// import 'package:readyrent/search.dart';

class SingleHostelListScreen extends StatelessWidget {
  const SingleHostelListScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        iconTheme: const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Single Room Hostels"),
      ),
      body: ListView.builder(
        
        itemCount: singleHostelList.length,
        itemBuilder: (context, index) {
        SingleHostel singleHostel = singleHostelList[index];
        return Card(
          child: ListTile(
            leading:Image.asset(singleHostel.picture),
            title: Text(singleHostel.title),
            subtitle: Text(singleHostel.description),
            trailing: TextButton(onPressed: (){
                Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => DetailsScreen(singleHostel)));
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
                   builder: (context) => DetailsScreen(singleHostel)));
            },
          
          ),
        );
      },),
    );
  }
}