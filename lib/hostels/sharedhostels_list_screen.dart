import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/hostels/sharedhostel_details_screen.dart';
import 'package:readyrent/hostels/sharedhostels.dart';



// import 'package:readyrent/search.dart';

class SharedHostelListScreen extends StatelessWidget {
  const SharedHostelListScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        iconTheme: const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Shared Room Hostels"),
      ),
      body: ListView.builder(
        
        itemCount:  sharedHostelList.length,
        itemBuilder: (context, index) {
         SharedHostel  sharedHostel =  sharedHostelList[index];
        return Card(
          child: ListTile(
            leading:Image.asset( sharedHostel.picture),
            title: Text( sharedHostel.title),
            subtitle: Text( sharedHostel.description),
            trailing: TextButton(onPressed: (){
                Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => DetailsScreen( sharedHostel)));
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
                   builder: (context) => DetailsScreen( sharedHostel)));
            },
          
          ),
        );
      },),
    );
  }
}