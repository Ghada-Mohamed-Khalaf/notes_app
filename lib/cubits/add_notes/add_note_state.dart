

import 'package:notes_app/models/note_model.dart';

abstract class AddNoteState{}
class AddNoteInitial extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{
   final  List<NoteModel> notes;

  AddNoteSuccess(this.notes);
}
class AddNoteFailure extends AddNoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
