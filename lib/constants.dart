import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evcharging/views/screens/hosts/c-miles/c_miles.dart';
import 'package:evcharging/views/screens/hosts/chargers/my_chargers.dart';
import 'package:evcharging/views/screens/hosts/home/home_screen.dart';
import 'package:evcharging/views/screens/hosts/menu/menu_screen.dart';
import 'package:evcharging/views/screens/hosts/sessions/sessions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



 List pages = [
  HomeScreen(),
  SessionsScreen(),
  MyChargers(),
  CMiles(),
  MenuScreen(),
];


var firebaseAuth = FirebaseAuth.instance;
var firestore = FirebaseFirestore.instance;




   Map<String, String> languageFlags = {
    'English (US)': 'images/usa.png',
    'English (UK)': 'images/uk.png',
    'Francais (France)': 'images/france.png',
    'Español (Spain)': 'images/spain.png',
    'Italiano (Italy)': 'images/italy.png',
  };
  

  List<String> languages = [
    'English (US)','English (UK)','Francais (France)','Español (Spain)','Italiano (Italy)',
  ];

