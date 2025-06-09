import 'package:flutter/material.dart';

class CustomeTextFeild extends StatelessWidget {
  CustomeTextFeild({
    super.key,
    required this.text,
    this.lines = 1,
    this.onsaved,
  });

  @override
  String text;
  int lines;
  void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (Value) {
        if (Value?.isEmpty ?? true) {
          return "valied is required";
        }
        return null;
      },
      maxLines: lines,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
