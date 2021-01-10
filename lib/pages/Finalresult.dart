import 'package:flutter/material.dart';

class FinalResult extends StatefulWidget {
  @override
  _FinalResultState createState() => _FinalResultState();
}

class _FinalResultState extends State<FinalResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffb4db9a),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text('Analysis of Ingredients'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.network(
                      'https://cdn0.iconfinder.com/data/icons/allergies/512/allergy-allergic-03-512.png'),
                ),
                SizedBox(height: 20),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Container(
                      padding: EdgeInsets.all(50),
                      width: 300,
                      height: 300,
                      child: Text(
                          'This item container high amount of peanuts and cashew nuts. May also contain traces of Wheat, Nuts, Milk, Sesame Soy and oats'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
