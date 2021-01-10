import 'package:flutter/material.dart';
import 'package:shehacks/allergens/models/allergens.dart';
import 'package:provider/provider.dart';
import 'package:shehacks/allergens/models/allergen_data.dart';

class AddAllergensScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newAllergenTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
                child: Text(
              'Add Allergen',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xffb4db9a),
              ),
            )),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(fillColor: Colors.lightBlueAccent),
              onChanged: (newValue) {
                newAllergenTitle = newValue;
              },
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              color: Color(0xffb4db9a),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (newAllergenTitle == '') {
                  return;
                } else {
                  final newAllergens = Allergen(name: newAllergenTitle);
                  Provider.of<AllergensData>(context, listen: false)
                      .addAllergen(newAllergens);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
