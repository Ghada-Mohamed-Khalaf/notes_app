import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/notes_cubit/note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/note_state.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit,NoteState>(
      builder: (context,state){
     return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount:  state is NoteSuccess? state.notes.length:0,

          padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
          var note;
          return  Padding(
            padding:   EdgeInsets.symmetric(vertical: 4.h),
            child:  NoteItem(
              note: note[index],
            ),
          );
        }),
      );

      },
    );
  }
}
