import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import '../../models/note_model.dart';

class EditNoteViewBody  extends StatelessWidget {
 EditNoteViewBody ({super.key, required this.note,required this.title,required this.content});
final NoteModel note;
String title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50.h,),
          CustomAppBar(
            onPressed:(){

              var widget;
              widget.note.title=title ?? widget.note.title;
              widget.note.subtitle=content ?? widget.note.title;
              widget.note.save();
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(height: 50.h),
          CustomTextField(
          onChanged: (value) {
            title=value!;


          } ,hint: 'title',),
          SizedBox(height: 50.h,),
          CustomTextField(onChanged: (value){
         content=value!;
          },
            hint: 'content',maxLines: 5,),

        ],

      ),
    );
  }
}
