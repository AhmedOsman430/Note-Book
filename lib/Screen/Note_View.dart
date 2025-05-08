import 'package:flutter/material.dart';
import 'package:untitled/widget/Add_Model_Progress.dart';
import 'package:untitled/widget/Note_View_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: NoteViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddModelProgressSheet();
            },
          );
        },
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}


