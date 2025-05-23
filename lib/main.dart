import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/Screen/Note_View.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("note box");
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Edu Australia VIC WA NT Hand",
      ),
      home: NoteView(),
    );
  }
}
