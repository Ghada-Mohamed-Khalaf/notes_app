import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constant.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());
  addNote(NoteModel note)async{
    emit(AddNoteLoading());


    try {
      var notesBox = Hive.box(kNotesBox);
      emit(AddNoteSuccess());
         await notesBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
     emit( AddNoteFailure(e.toString()));
      // TODO
    }

  }

}








