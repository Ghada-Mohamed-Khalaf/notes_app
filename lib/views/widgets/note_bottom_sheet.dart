import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubits.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child:  BlocConsumer<AddNoteCubit,AddNoteState>(
        listener: (context,state){

        },
        builder: (context,state){


   return ModalProgressHUD( inAsyncCall: ,
       child: const AddNoteForm());
    },
      ),

    );



  }
}

