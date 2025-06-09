import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:untitled/Cubit/add_note_cubit/add_note_cubit.dart';
import 'package:untitled/Cubit/add_note_cubit/add_note_state.dart';
import 'package:untitled/model/note_model.dart';
import 'package:untitled/widget/Custome_Button.dart';
import 'package:untitled/widget/Custome_Text_Feild.dart';

class AddModelProgressSheet extends StatelessWidget {
  AddModelProgressSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailuer) {
            print("Failuer${state.error}");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomeTextFeild(
            text: "Add Note",
            lines: 1,
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),
          CustomeTextFeild(
            text: "Add Title",
            lines: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 30),
          CustomeButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var note = NoteModel(
                  title: title!,
                  subtitle: subtitle!,
                  Date: DateTime.now().toString(),
                );
                BlocProvider.of<AddNoteCubit>(context).AddNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
