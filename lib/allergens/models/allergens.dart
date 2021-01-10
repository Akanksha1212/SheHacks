class Allergen {
  final String name;
  bool isDone;

  Allergen({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
