import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppElevatedButtom extends StatelessWidget {
  const AppElevatedButtom({
    super.key, required this.title, required this.onPress, this.isvalid=false,
  });
final String title;
final void Function() onPress;
final bool isvalid;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:isvalid?185: 325,
        height: 50,

        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFFFFB039)
        ),
          onPressed: onPress, child: Text(title,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.white),),));
  }
}