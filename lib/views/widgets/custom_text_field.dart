import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
          hintStyle:TextStyle(
            color: KPrimaryColor,
          ) ,

          border: buildBorder(),
      enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),


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
