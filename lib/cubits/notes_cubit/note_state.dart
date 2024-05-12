

import 'package:notes_app/models/note_model.dart';

abstract class NoteState{}

  final  List<NoteModel> notes;

  NoteSuccess(this.notes);
}
class NoteFailure extends NoteState {
  final String errMessage;

  NoteFailure(this.errMessage);
}
