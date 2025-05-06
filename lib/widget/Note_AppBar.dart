import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteAppbar extends StatelessWidget {
  const NoteAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Note Book",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
            fontFamily: "Edu Australia VIC WA NT Hand",
          ),
        ),
        Spacer(),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white.withOpacity(.2),
          ),
          child: Icon(Icons.search_off),
        ),
      ],
    );
  }
}
