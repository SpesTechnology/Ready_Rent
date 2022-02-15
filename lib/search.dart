import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';

class SearchProperties extends StatefulWidget {
  const SearchProperties({ Key? key }) : super(key: key);

  @override
  _SearchPropertiesState createState() => _SearchPropertiesState();
}

class _SearchPropertiesState extends State<SearchProperties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
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
                  //  style: TextStyle(fontSize: 20,),
                  //  tex: TextAlign.start,tAlign
                   ),
                 border: OutlineInputBorder(
                   borderSide:BorderSide.none,
                 ),
                 ),
                  
                  ),
            ),
          ), 
          const SizedBox(
            height: 50,
          ),
          const Text("All adds"),
           Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ),
                title: const Text(
                  "Single Room Self Contained",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.0),
                    Text("New Site"),
                  ],
                ),
                
              ),
            ),
          ),
//                   Stack(
//     alignment: Alignment.center,
//     children: const <Widget>[
//         Image(image: AssetImage("assets/images/profile.jpeg")),
//         Text("someText"),
//     ]
// )
            ],
          )
        ],
      ),
    );
  }
}