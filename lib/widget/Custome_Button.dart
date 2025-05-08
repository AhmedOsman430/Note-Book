import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return           Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple,
            ),
            child: Center(
              child: Text("Add",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}