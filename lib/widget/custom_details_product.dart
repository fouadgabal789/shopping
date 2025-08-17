import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDetailsProduct extends StatelessWidget {
  const CustomDetailsProduct({
    super.key, required this.title, required this.nmaeproduct, required this.Processor, required this.IMAC, required this.Memory, required this.Built,
  });
final String title;
  final String nmaeproduct;
  final String Processor;
  final String IMAC;
  final String Memory;
  final String Built;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0XFF01A688)),),
          Text(nmaeproduct,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0XFF516971)),),
          Text('Spesification',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0XFF516971)),),
          Text( Processor,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0XFF516971)),),
          Text(IMAC,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0XFF516971)),),
          Text(Memory,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0XFF516971)),),
          Text(Built,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0XFF516971)),),


        ],
      ),
    );
  }
}