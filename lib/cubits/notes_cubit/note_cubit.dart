import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes_app/cubits/notes_cubit/note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constant.dart';

class NoteCubit extends Cubit<NoteState> {

NoteCubit() :super(NoteInitial()) {
    // TODO: implement NoteCubit
    throw UnimplementedError();
  }

  List <NoteModel>notes;

  fetchAllNote() async {
    emit(NoteLoading());


    try {
      var notesBox = Hive.box(kNotesBox);
     notesBox.values.toList();

      emit(NoteSuccess(notes));


    }  catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }


}
