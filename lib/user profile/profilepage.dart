import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:readyrent/changepassword.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/user%20profile/profile_widget.dart';
import 'package:readyrent/user%20profile/user_preference.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        title: const Text("EDIT PROFILE",
        style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
        ),
          actions: const[
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(Icons.logout),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        physics:const BouncingScrollPhysics(),
        children: [
           ProfileWidget(
             imagePath:user.imagePath,
             onClicked: () async {}, 

           )
        ],
      ),
    );
  }
}