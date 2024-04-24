import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
      return  Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: NoteItem(),
      );
    });
  }
}
