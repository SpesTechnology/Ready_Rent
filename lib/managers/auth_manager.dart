import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthManager with ChangeNotifier {
// now lets create the instances of the firebaseAuth

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  CollectionReference userCollection = _firebaseFirestore.collection('users');

  String _message = '';
  bool _isLoading = false;

  String get message => _message;
  bool get isLoading => _isLoading;

  setMessage(String message) {
    _message = message;
    notifyListeners();
  }

  setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  //function for creating user
  Future<bool> createNewUser(
      {required String name,
      required String email,
      required String password}) async {
    setIsLoading(true);
    bool isCreated = false;

    await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((userCredential) async {
      await userCollection.doc(userCredential.user!.uid).set({
        "name": name,
        "email": email,
        "uid": userCredential.user!.uid,
        "createdAt": FieldValue.serverTimestamp(),
      });
      isCreated = true;
    }).catchError((onError) {
      setMessage('$onError');
    }).timeout(const Duration(seconds: 60), onTimeout: () {
      setMessage('Please check your internet connection');
      isCreated;
      setIsLoading(false);
    });

    return isCreated;
  }

  Future<bool> loginUser(
      {required String email, required String password}) async {
    bool isSuccessful = false;
    await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((userCredential) {
      if (userCredential.user != null) {
        isSuccessful = true;
      } else {
        isSuccessful = false;
      }
    }).catchError((onError) {
      setMessage("$onError");
      isSuccessful = false;
    }).timeout(const Duration(seconds: 30), onTimeout: () {
      setMessage("Please check internet connection");
      isSuccessful;
    });
    return isSuccessful;
  }
}
