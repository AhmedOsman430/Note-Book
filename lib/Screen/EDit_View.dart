import 'package:flutter/material.dart';
import 'package:untitled/widget/Custome_Button.dart';
import 'package:untitled/widget/Custome_Text_Feild.dart';
import 'package:untitled/widget/Note_AppBar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: 50),
            NoteAppbar(text: 
            "Edit",
            icon: Icons.edit,        
            ),
            SizedBox(height: 20),
            CustomeTextFeild(text: 
            "Edit Note",
            ),
            SizedBox(height: 10),
            CustomeTextFeild(text: 
            "Edit Title",
            lines: 5,
            ),
            SizedBox(height: 350),
            CustomeButton(),
          ],
          ),
        ),
      ),
    );
  }
}
