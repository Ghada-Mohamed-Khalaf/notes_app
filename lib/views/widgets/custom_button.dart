import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()?onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        height: 55.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: isLoading ? const SizedBox(
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
