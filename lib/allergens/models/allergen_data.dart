import 'package:flutter/foundation.dart';
import 'allergens.dart';
import 'dart:collection';

class AllergensData extends ChangeNotifier {
  List<Allergen> _allergen = [];

  UnmodifiableListView<Allergen> get allergen {
    return UnmodifiableListView(_allergen);
  }

  int get allergenCount {
    return _allergen.length;
  }

  void addAllergen(Allergen newAllergen) {
    _allergen.add(newAllergen);
    notifyListeners();
  }

  void updateAllergen(Allergen newAllergen) {
    newAllergen.toggleDone();
    notifyListeners();
  }

  void deleteAllergen(int index) {
    _allergen.removeAt(index);
    notifyListeners();
  }
}
