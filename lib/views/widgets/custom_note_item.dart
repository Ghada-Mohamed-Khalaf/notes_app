import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0.r),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return  EditNoteView();
          }
          ));
        },
        child: Container(
          padding: EdgeInsets.only(top: 24.h ,bottom: 8.h,left: 16.h),
          decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title:  Text(
                    "Flutter Tips",
                    style: TextStyle(color: Colors.black,fontSize: 24.sp),
                  ),
                  subtitle:  Padding(
                    padding:  EdgeInsets.only(top: 16.h,bottom: 16.h),
                    child: Text("Build your career with ghada mohamed",
                        style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20.sp)),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black,size: 30.sp,),
                  )),
              Padding(
                padding:  EdgeInsets.only(right: 24),
                child: Text(
                  "May15,2024",
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
