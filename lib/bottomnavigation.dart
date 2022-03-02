import 'package:flutter/material.dart';
import 'package:readyrent/categories.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/mainhomepage.dart';
import 'package:readyrent/profilepage.dart';
import 'package:readyrent/properties/property_list_screen.dart';
// import 'package:readyrent/search.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

int _currentIndex = 0;
final List<Widget>  _children = [
   const UserHomePage(),
   const PropertyListScreen(),
   const Categories(),
   const EditProfile(),
];

void _onItemTapped(int index){
  setState((){
    _currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:kPrimaryColor,
        onTap: _onItemTapped,
        items: const[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: ("Home"), 
            backgroundColor: kPrimaryColor,
            ),
              BottomNavigationBarItem(
            icon:Icon(Icons.search),
            label: ("Search"), 
            backgroundColor: kPrimaryColor,
            ),
              BottomNavigationBarItem(
            icon:Icon(Icons.category),
            label: ("Categories"), 
            backgroundColor: kPrimaryColor,
            ),
              BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label: ("Profile"), 
            backgroundColor: kPrimaryColor,
            ),
        ] ,
          currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        // onTap: _onItemTapped,
      ),
      
    );
  }
}