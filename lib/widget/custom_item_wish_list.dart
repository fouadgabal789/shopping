import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomItemWishList extends StatelessWidget {
  const CustomItemWishList({
    super.key, required this.title, required this.subtitle, required this.price, this.discount='',
  });
  final String title ;
  final String subtitle;
  final String price;
  final String discount;



  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
          color: Color(0XFFFFFDFD),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Color(0XFFF3D9E8),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            child: Image.asset('lib/images/laptop.png'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
            child: Text(title,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black),),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
            child: Text(subtitle,style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: Color(0XFF8B9E9E)),),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
            child: Row(
              children: [
                Text('$price',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0XFF02A88A)),),
              SizedBox(width: 10,),
              Text(discount,textAlign: TextAlign.end,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFFF25822),decoration: TextDecoration.lineThrough, decorationThickness: 2,),),
              ],
            ),
          ),

        ],
      ),

    );
  }
}