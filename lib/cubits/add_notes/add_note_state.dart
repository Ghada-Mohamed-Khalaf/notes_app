

abstract class AddNoteState{}
class AddNoteInitial extends AddNoteState{}

class AddNoteSuccess extends AddNoteState{

}
class AddNoteFailure extends AddNoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
