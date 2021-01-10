import 'package:firebase_auth/firebase_auth.dart';
import 'package:shehacks/pages/camera.dart';
import 'package:shehacks/pages/home.dart';
import 'package:shehacks/pages/home_page.dart';
import 'package:shehacks/login/login.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SnackBar(
            content: Text("Something went wrong"),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          User user = FirebaseAuth.instance.currentUser;
          if (user != null) {
            // making changes here
            return HomePage();
          } else {
            return Login();
          }
        }
        return Splash();
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff77d1bc),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage('assets/Logo.png'),
          ),
          SpinKitWave(
            color: Colors.white,
            size: 50,
          ),
        ]),
      ),
    );
  }
}
