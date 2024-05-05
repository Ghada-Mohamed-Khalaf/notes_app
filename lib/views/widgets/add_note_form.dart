
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_notes/add_note_state.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubits.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },

                hint: 'title',),
              SizedBox(height: 16.h,),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },

                hint: 'content', maxLines: 5,),
              SizedBox(height: 30.h,),

              BlocBuilder<AddNoteCubit,AddNoteState>(
                builder: (context,state) {
                  return CustomButton(
                    isLoading: state is AddNoteLoading ? true : false,

                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var noteModel = NoteModel(title: title!,
                            subtitle: subTitle!,
                            data: DateTime.now().toString(),
                            color: Colors.blue.value);

                        BlocProvider.of<AddNoteCubit>(context).addNote(
                            noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {

                        });
                      }
                    },
                  );
                },

              ),


            ],
          ),
        ),
      ),
    );
  }
}
