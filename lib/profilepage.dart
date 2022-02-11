import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
         children: [
          TextFormField(
            decoration: const InputDecoration(label: Text("Title")),
          ),
          const SizedBox(
            height: 100,
          ),
          TextFormField(
            decoration: const InputDecoration(label: Text("Description")),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(label: Text("Date")),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(label: Text("Time")),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Create",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}