import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/notes_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0.r),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return  const EditNoteView();
          }
          ));
        },
        child: Container(
          padding: EdgeInsets.only(top: 24.h ,bottom: 8.h,left: 16.h),
          decoration: BoxDecoration(
            color:  Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title:  Text(
                   note.title,
                    style: TextStyle(color: Colors.black,fontSize: 24.sp),
                  ),
                  subtitle:  Padding(
                    padding:  EdgeInsets.only(top: 16.h,bottom: 16.h),
                    child: Text(note.subtitle,
                        style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20.sp)),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NoteCubit>(context).fetchAllNote();


                    },
                    icon: Icon(Icons.delete, color: Colors.black,size: 30.sp,),
                  )),
              Padding(
                padding:  EdgeInsets.only(right: 24),
                child: Text(
                 note.data,
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
