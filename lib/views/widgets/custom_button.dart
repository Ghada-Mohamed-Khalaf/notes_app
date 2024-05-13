import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/constant.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()?onTap;
  final bool isLoading;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(

        height: 55.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: widget.isLoading ? const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
           color: Colors.black,
          ),
        ):
        Text("add", style: TextStyle(
            color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.bold
        ),

        ),

        ),
      ),
    );
  }
}
