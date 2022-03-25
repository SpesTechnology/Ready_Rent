import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readyrent/changepassword.dart';
import 'package:readyrent/constant.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0,10.0,30.0,8.0),
        child: ListView(
           children: [
             Row(
               children: [
                 const CircleAvatar( backgroundImage: AssetImage("assets/images/profile.jpeg",),
                 radius:50,
                 ),
                 const SizedBox(
                   width: 100,
                   ),
                 Column(
                   children:[
                     Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: kPrimaryLightColor,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const EditProfile();
                    }));
                  },
                  child: const Text('UPLOAD NEW PHOTO',
                      style: TextStyle(
                      color:Colors.black,
                      fontSize: 15.0),
                      ),
                      ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: kPrimaryLightColor,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const EditProfile();
                    }));
                  },
                  child: const Text('DELETE IMAGE',
                      style: TextStyle(
                      color:Colors.black,
                      fontSize: 15.0),
                      ),
                      ),
            ),
                   ],
                 )
               ],
             ),
             const SizedBox(
               height: 50,
               ),
            TextFormField(
               validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
              decoration: const InputDecoration(label: Text("Name")),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Email"),
              ), 
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(label: Text("Location")),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextFormField(
                    keyboardType:TextInputType.number,
                         inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                          ], 
                    decoration: const InputDecoration(label: Text("Phone Number")),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,8.0,50.0,8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const ChangePassword();
                  }));
                },
                child: const Text(
                  "Change Password",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
              ),
            ),
      const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,8.0,50.0,8.0),
              child: TextButton(
                onPressed: () {
                },
                child: const Text(
                  "Save Changes",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}