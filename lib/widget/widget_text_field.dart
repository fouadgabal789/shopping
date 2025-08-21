import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetTextField extends StatelessWidget {
  const WidgetTextField({
    super.key, required this.hint, required this.controller, required this.keybord, this.suffix, this.prefix,
  });
final String hint;
final TextEditingController controller;
final TextInputType keybord;
final IconButton? suffix;
  final IconButton? prefix;



  @override
  Widget build(BuildContext context) {

    return TextField(
    keyboardType:keybord ,
      controller: controller,
      textAlign: TextAlign.start,
      decoration: InputDecoration(

        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 12,        // Change font size
          color: Color(0XFF5F6E7C),  // Change hint text color
          fontWeight: FontWeight.w400,
        ),

        suffixIcon: suffix,
        prefix: prefix,
        constraints: BoxConstraints(maxHeight: 50),



        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1,color: Color(0XFFFFFFFF)),

        ),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1,color: Color(0XFFFFFFFF)),
        ) ,

      ),
    );
  }
}