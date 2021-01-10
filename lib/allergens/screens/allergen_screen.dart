import 'package:flutter/material.dart';
import 'package:shehacks/allergens/widgets/allergens_list.dart';
import 'package:shehacks/pages/camera.dart';
import 'add_allergens_screen.dart';
import 'package:shehacks/allergens/models/allergens.dart';
import 'package:provider/provider.dart';
import 'package:shehacks/allergens/models/allergen_data.dart';

class AllergensScreen extends StatefulWidget {
  @override
  _AllergensScreenState createState() => _AllergensScreenState();
}

class _AllergensScreenState extends State<AllergensScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb4db9a),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffb4db9a),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: (context),
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      child: AddAllergensScreen(),
                    ),
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                  ),
              isScrollControlled: true);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Allergens',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Scan()),
                              ),
                          child: Image.asset(
                            "assets/Logo.png",
                            height: 70,
                            width: 70,
                          )),
                    ]),
                Text(
                  '${Provider.of<AllergensData>(context).allergenCount} allergens',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
              ),
              child: AllergensList(),
            ),
          )
        ],
      ),
    );
  }
}
