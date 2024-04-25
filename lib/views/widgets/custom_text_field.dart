import 'package:flutter/material.dart';
import 'package:notes_app/views/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,this.maxLines=1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value){
         if(value?.isEmpty?? true) {
           return" field is required";
        }
          else{
            return null;

         }

      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
          hintStyle:const TextStyle(
            color: kPrimaryColor,
          ) ,

          border: buildBorder(),
      enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),


      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
          8,
      ),
          borderSide: const BorderSide(
            color: Colors.white
          ),
    );
  }
}
