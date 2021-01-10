import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shehacks/allergens/screens/allergen_screen.dart';
import 'package:shehacks/allergens/screens/allergen_screen.dart';
import 'package:provider/provider.dart';
import 'package:shehacks/allergens/models/allergen_data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllergensData(),
      child: MaterialApp(
        home: AllergensScreen(),
      ),
    );
  }
}
