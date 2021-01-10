import 'package:flutter/material.dart';
import 'package:shehacks/allergens/widgets/allergens_title.dart';
import 'package:shehacks/allergens/models/allergens.dart';
import 'package:provider/provider.dart';
import 'package:shehacks/allergens/models/allergen_data.dart';

class AllergensList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AllergensData>(
      builder: (context, allergendata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final allergen = allergendata.allergen[index];
            return InkWell(
              onLongPress: () {
                allergendata.deleteAllergen(index);
              },
              child: AllergensTitle(
                allergenTitle: allergen.name,
                isChecked: allergen.isDone,
                toggleCheckBoxState: (bool check) {
                  allergendata.updateAllergen(allergen);
                },
              ),
            );
          },
          itemCount: allergendata.allergenCount,
        );
      },
    );
  }
}
