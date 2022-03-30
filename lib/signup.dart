import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/managers/auth_manager.dart';
import 'package:readyrent/welcomepage.dart';
import 'package:readyrent/login.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthManager _authManager = AuthManager();
  final emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  final GlobalKey<FormState> _globalKey = GlobalKey();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WelcomePage();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back),
            ),
            const Center(
                child: Text(
              "Create an account",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/signup.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kPrimaryLightColor,
                ),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person),
                    ),
                    hintText: ("Username"),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kPrimaryLightColor,
                ),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person),
                    ),
                    hintText: ("Email"),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (!emailRegExp.hasMatch(value!)) {
                      return 'Enter a valid email';
                    }
                    if (value.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kPrimaryLightColor,
                ),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.lock),
                    ),
                    hintText: ("Password"),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15.0),
            //       color: kPrimaryLightColor,
            //     ),
            //     child: TextFormField(
            //       decoration: const InputDecoration(
            //         icon: Padding(
            //           padding: EdgeInsets.all(8.0),
            //           child: Icon(Icons.lock),
            //         ),
            //         hintText: ("Confirm Password"),
            //         border: OutlineInputBorder(borderSide: BorderSide.none),
            //       ),
            //       validator: (value) {
            //         if (value!.isEmpty) {
            //           return 'required';
            //         }
            //         return null;
            //       },
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kPrimaryColor,
                ),
                child: TextButton(
                  onPressed: () async {
                    if (_globalKey.currentState!.validate()) {
                      setState(() {
                        _isLoading = true;
                      });
                      bool isCreated = await _authManager.createNewUser(
                          name: _nameController.text,
                          email: _emailController.text.trim(),
                          password: _passwordController.text);

                      if (isCreated) {
                        setState(() {
                          _isLoading = false;
                        });
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => Login()),
                            (route) => false);
                      } else {
                        //show error message
                      }
                    } else {
                      //form error message
                    }
                  },
                  child: const Text(
                    'Create account',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
