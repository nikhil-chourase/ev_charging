

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evcharging/constants.dart';
import 'package:evcharging/controllers/user_notifier.dart';
import 'package:evcharging/views/screens/hosts/home/home_page.dart';
import 'package:evcharging/views/screens/onboarding/auth/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:evcharging/models/user.dart' as model;




final authControllerProvider = StateNotifierProvider<AuthController, User?>((ref) {

  return AuthController(ref.read);
});




class AuthController extends StateNotifier<User?> {


  final Reader read;


  final _loginResultNotifier = ValueNotifier<bool?>(null);
  ValueNotifier<bool?> get loginResultNotifier => _loginResultNotifier;



   AuthController(this.read) : super(firebaseAuth.currentUser) {
    _authStateChanges();
  }

   void _authStateChanges() {
    firebaseAuth.authStateChanges().listen((User? user) async {
      if (user != null) {
        DocumentSnapshot snapshot = await firestore.collection('users').doc(user.uid).get();
        if (snapshot.exists) {
          final appUser = model.User.fromSnap(snapshot);
          read(userProvider.notifier).setUser(appUser);
          _navigateToHomeScreen();
        } else {
          _navigateToLoginScreen();
        }
      } else {
        _navigateToLoginScreen();
      }
      state = user;
    });
  }
  

  void _setInitialScreen(User? user) {
    if (user == null) {
      // Navigate to LoginScreen
     _navigateToLoginScreen();
    } else {
      // Navigate to HomeScreen
       _navigateToHomeScreen();
    }
  }



  

  void _navigateToLoginScreen() {
    final context = navigatorKey.currentContext;
    if (context != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
    }
  }

  void _navigateToHomeScreen() {
    final context = navigatorKey.currentContext;
    if (context != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  // registering the user
  void registerUser(String username, String email, String password) async {
    try {
      if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );


        model.User user = model.User(
          name: username,
          email: email,
          uid: cred.user!.uid,
        );
        await firestore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());

        showSnackbar('User Created', 'Account successfully created');
        _navigateToLoginScreen();    
      }
       else {
        
      }

    } catch (e) {
      showSnackbar('Error Creating Account', e.toString());
    }
  }

   void loginUser(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        UserCredential cred = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        DocumentSnapshot snapshot = await firestore.collection('users').doc(cred.user!.uid).get();
        if (snapshot.exists) {
          final appUser = model.User.fromSnap(snapshot);
          read(userProvider.notifier).setUser(appUser);
          _loginResultNotifier.value = true;
          showSnackbar('User successfully logged in', '');
          _navigateToHomeScreen();
        } else {
          showSnackbar('Error Logging in', 'User not found');
          _loginResultNotifier.value = false;
        } // After login, navigate to home
      } else {
        showSnackbar('Error Logging in', 'Please enter all fields');
        _loginResultNotifier.value = false;
      }
    } catch (e) {
      showSnackbar('Error Logging in', e.toString());
      _loginResultNotifier.value = false;
    }
  }

 
 void signOut() async {
    await firebaseAuth.signOut();
    read(userProvider.notifier).setUser(null);
    _navigateToLoginScreen();
  }


  void showSnackbar(String title, String message) {
    final context = navigatorKey.currentContext;

    if(context!= null){

       ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title: $message'),
      ),
    );

    }
   
  }
}

// Navigator Key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();