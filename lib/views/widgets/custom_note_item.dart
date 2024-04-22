import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const EditNoteView();
          }
          ));
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24,bottom: 8,left: 16),
          decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: const Text(
                    "Flutter Tips",
                    style: TextStyle(color: Colors.black,fontSize: 24),
                  ),
                  subtitle:  Padding(
                    padding: const EdgeInsets.only(top: 16,bottom: 16),
                    child: Text("Build your career with ghada mohamed",
                        style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20)),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete, color: Colors.black,size: 30,),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 24),
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
