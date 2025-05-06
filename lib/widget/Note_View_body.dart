import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widget/Note_AppBar.dart';
import 'package:untitled/widget/Note_Item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        NoteAppbar(),
        SizedBox(height: 20),
        NoteItem(),
      ],
    );
  }
}
