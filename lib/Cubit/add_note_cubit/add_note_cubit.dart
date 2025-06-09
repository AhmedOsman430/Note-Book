import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/Cubit/add_note_cubit/add_note_state.dart';
import 'package:untitled/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Future<void> AddNote(NoteModel note) async {
    try {
      emit(AddNoteLoading());
      var notebox = Hive.box<NoteModel>("note box");
      await notebox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailuer(e.toString()));
    }
  }
}
