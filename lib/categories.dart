import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/mainhomepage.dart';


void main() => runApp(const Categories());

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  static const String _title = 'Categories';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
   static TextStyle optionStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    const UserHomePage(),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    
     ListView(   
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
                    Ink.image(image: const NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/18/9e/52/8e/code-pod-hostels-the.jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("HOSTEL",style:TextStyle(backgroundColor: Colors.white,fontSize: 24,),),
                    ),
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
                    Ink.image(image: const NetworkImage("https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyamin-mellish-186077.jpg&fm=jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:Text("BUILDINGS",style:TextStyle(backgroundColor: Colors.white,fontSize: 24,),),
                    )
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
                    Ink.image(image: const NetworkImage("https://images.pexels.com/photos/3990589/pexels-photo-3990589.jpeg?cs=srgb&dl=pexels-curtis-adams-3990589.jpg&fm=jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child:Text("APARTMENTS",style:TextStyle(backgroundColor: Colors.white,fontSize: 24,),),
                    )
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
                    Ink.image(image: const NetworkImage("https://nairametrics.com/wp-content/uploads/2021/06/Land-for-sale.jpg"),
                    fit:BoxFit.cover ,
                    height: 150,
                    ),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child:Text("LANDS",style:TextStyle(backgroundColor: Colors.white,fontSize: 24,),),
                    )
                  ],
                ), 
              ),
          ),  
        ],
      ),

  
  ];
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('CATEGORIES'),
        iconTheme: const IconThemeData(color:Colors.white),
      ),
      body:Container(
         child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
           backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.category),
            label: 'Categories',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: kPrimaryColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
