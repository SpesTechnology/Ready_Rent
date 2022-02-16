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

         ListView(
           children: [
             Property(
               picture: Image.asset("assets/images/hostelimage1.jpg"),
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               )
           ],
         ),                
                  ],
          )
        ],
      ),
    );
  }
}

class Property extends StatelessWidget {
  const Property({
    Key? key,

    required this.picture,
    required this.title,
    required this.icon,
    required this.description,
    required this.details,
    required this.button,
    
  }) : super(key: key);
    final Image picture;
    final String title;
    final IconData icon;
    final String description;
    final String details;
    final String button;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0,1.0,8.0,1.0),
                   child: Text(
                      title,
                      style:  const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                 ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,1.0,8.0,1.0),
                    child: Row(
                      children:[
                        Icon(icon),
                          Text(
                          description,
                          style: const TextStyle(
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
                      Padding(
                       padding: const EdgeInsets.fromLTRB(3.0,1.0,8.0,1.0),
                       child: Text(
                          details,
                          style: const TextStyle(
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
    );
  }
}