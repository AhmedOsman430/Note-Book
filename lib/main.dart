import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/Cubit/add_note_cubit/add_note_cubit.dart';
import 'package:untitled/Screen/Note_View.dart';
import 'package:untitled/model/note_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>("note box");
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Edu Australia VIC WA NT Hand",
        ),
        home: NoteView(),
      ),
    );
  }
}
