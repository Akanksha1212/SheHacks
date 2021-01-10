import 'package:flutter/material.dart';

class AllergensTitle extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckBoxState;
  final String allergenTitle;
  AllergensTitle(
      {this.isChecked, this.toggleCheckBoxState, this.allergenTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        allergenTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
