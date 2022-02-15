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
      ),
    );
  }
}