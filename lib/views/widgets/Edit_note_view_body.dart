import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody  extends StatelessWidget {
  const EditNoteViewBody ({super.key});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50.h,),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(height: 50.h),
          CustomTextField(
          onChanged: (value) {
            title=value;


          } ,hint: 'title',),
          SizedBox(height: 50.h,),
          CustomTextField(onChanged: (value){
            content=value;n
          },
            hint: 'content',maxLines: 5,),

        ],

      ),
    );
  }
}
