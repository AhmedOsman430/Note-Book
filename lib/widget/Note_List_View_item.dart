import 'package:flutter/material.dart';
import 'package:untitled/widget/Note_Item.dart';

class NoteListViewItem extends StatelessWidget {
  const NoteListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, item) {
        return NoteItem();
      },
    );
  }
}
