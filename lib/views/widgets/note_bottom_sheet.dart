import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  const addNoteForm();



  }
}

class addNoteForm extends StatelessWidget {
  const addNoteForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              CustomTextField(hint: 'title',),
              SizedBox(height: 16,),
              CustomTextField(hint: 'content',maxLines: 5,),
              SizedBox(height: 30,),

              CustomButton(),

            ],
          ),
        ),
    );
  }
}