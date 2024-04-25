import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return  const AddNoteForm();



  }
}

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
 String? title,subTitle;

 @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode:autovalidateMode ,
            child: Column(
              children: [
                SizedBox(height: 30.h,),
                CustomTextField(
                  onSaved: (value){
                    title=value;
                  },

                  hint: 'title',),
                SizedBox(height: 16.h,),
                CustomTextField(
                  onSaved: (value){
                    subTitle=value;
                  },

                  hint: 'content',maxLines: 5,),
                SizedBox(height: 30.h,),
            
                CustomButton(
                  onTap:(){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                    }else{
                      autovalidateMode=AutovalidateMode.always;
                      setState(() {

                      });
                    }
                  },
                ),

              ],
            ),
          ),
        ),
    );
  }
}