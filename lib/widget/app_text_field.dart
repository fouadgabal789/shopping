import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key, required this.hint, required this.controller, required this.keyboardType, this.constrins=0.0,  this.expand=false, this.errortext,
  });
final String hint ;
final TextEditingController controller;
final TextInputType  keyboardType;
final double constrins;
final bool expand;
final String? errortext;

  @override
  Widget build(BuildContext context) {
    return TextField(

       decoration: InputDecoration(
        hintText:hint,
         hintStyle: TextStyle(
           fontSize: 12.sp,        // Change font size
           color: Color(0XFF5F6E7C),  // Change hint text color
           fontWeight: FontWeight.w400,
         ),

        //  constraints: BoxConstraints(maxHeight: constrins),
      errorText: errortext,

    ),keyboardType: keyboardType,controller: controller,);
  }
}