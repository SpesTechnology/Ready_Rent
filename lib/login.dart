// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';
import 'package:readyrent/managers/auth_manager.dart';
import 'package:readyrent/mainhomepage.dart';
// import 'package:readyrent/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final AuthManager _authManager = AuthManager();

  final emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  final GlobalKey<FormState> _globalKey = GlobalKey();
  bool isSuccessful = false;

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
            // IconButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUp();
            //         },
            //       ),
            //     );
            //   },
            //   icon: const Icon(Icons.arrow_back),
            // ),
            const Center(
                child: Text(
              "Login",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            )),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/login.jpg"),
                          fit: BoxFit.cover)),
                ),
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
                  controller: _emailController,
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person),
                    ),
                    hintText: ("Phone or Email"),
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
                        isSuccessful = true;
                      });
                      bool isCreated = await _authManager.loginUser(
                          // name: _emailController.text,
                          email: _emailController.text.trim(),
                          password: _passwordController.text);

                      if (isCreated) {
                        setState(() {
                          isSuccessful = false;
                        });
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => UserHomePage()),
                            (route) => false);
                      } else {
                        //show error message
                      }
                    } else {
                      //form error message
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 8.0, 40.0, 8.0),
              child: Center(
                child: InkWell(
                  child: RichText(
                    text: const TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                            ),
                          ),
                        ]),
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
