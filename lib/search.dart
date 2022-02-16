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
            height: 20,
          ),
          const Text("All adds"),

          GestureDetector(
            child: Card(
              elevation: 1,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Image.asset(
                      "assets/images/hostelimage1.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Padding(
                         padding: EdgeInsets.fromLTRB(8.0,1.0,8.0,1.0),
                         child: Text(
                            "Single Room Hostel",
                            style:  TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                       ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,1.0,8.0,1.0),
                          child: Row(
                            children: const [
                              Icon(Icons.location_on),
                               Text(
                                "Main Campus",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           const Padding(
                             padding: EdgeInsets.fromLTRB(3.0,1.0,8.0,1.0),
                             child: Text(
                                'Takoradi Technical University',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                           ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextButton(onPressed: (){

                              },
                               child: const Text('View detials',
                      style: TextStyle(
                      color:Colors.black,
                      fontSize: 15.0),
                      ),)

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
          )

          //  Card(
          //   elevation: 0,
          //   child: Padding(
          //     padding: const EdgeInsets.all(1.0),
          //     child: ListTile(
          //       leading: const CircleAvatar(
          //         radius: 35,
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          //       ),
               
          //       subtitle: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children:[
          //           const Icon(
          //             Icons.location_on,
          //             color: Colors.black,
          //           ),
          //          const SizedBox(width: 5.0),
          //           const Text("New Site"),
          //            Padding(
          //   padding:  const EdgeInsets.symmetric(horizontal: 8.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(5.0),
          //       color: kPrimaryColor,
          //     ),
          //     child: Row(
          //       children: [
          //         TextButton(
          //             onPressed: () {
                      
          //             },
          //             child: const Text('View detials',
          //                 style: TextStyle(
          //                 color:Colors.white,
          //                 fontSize: 10.0),
          //                 ),
          //                 ),
          //       ],
          //     ),
          //   ),
          // ),
                   //  Padding(
                    //   padding:
                    //     const EdgeInsets.symmetric(horizontal: 8.0),
                    //   child: TextButton(
                    //     onPressed: (){

                    //           },
                    //            child: const Text('View detials',
                    //   style: TextStyle(
                    //   color:Colors.black,
                    //   fontSize: 15.0),
                    //   ),)

                    //         ),
                            
                  ],
                
          //              Padding(
          // //                     padding:
          // //                         const EdgeInsets.symmetric(horizontal: 8.0),
          // //                     child: TextButton(onPressed: (){

          // //                     },
          // //                      child: const Text('View detials',
          // //             style: TextStyle(
          // //             color:Colors.white,
          // //             fontSize: 20.0),
          // //             ),)

          // //                   ),
          //       ),
                
          //     ),
          //   ),
          // ),
//                   Stack(
//     alignment: Alignment.center,
//     children: const <Widget>[
//         Image(image: AssetImage("assets/images/profile.jpeg")),
//         Text("someText"),
//     ]
// )
            // ],
          )
        ],
      ),
    );
  }
}