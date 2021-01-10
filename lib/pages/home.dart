import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shehacks/allergens/screens/allergen_screen.dart';
import 'package:shehacks/allergens/screens/allergen_screen.dart';
import 'package:provider/provider.dart';
import 'package:shehacks/allergens/models/allergen_data.dart';
import 'package:shehacks/pages/home_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            RaisedButton(
                color: Colors.transparent,
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    ))
          ],
        ),
      ),
    );
  }
}
