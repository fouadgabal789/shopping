import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomItemCart extends StatelessWidget {
  const CustomItemCart({
    super.key, required this.title, required this.price, required this.onpressplus, required this.onpressmin, required this.count,
  });
  final String title;
  final String price;
  final String count;

  final void Function() onpressplus;
  final void Function() onpressmin;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding:EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0XFFFFE5D7)
                  ),

                ),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text(price,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0XFF02A88A)),),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0XFFC0C8C7),
                              width: 1,
                            ),
                          ),
                          child: IconButton(padding: EdgeInsets.zero, onPressed:onpressmin, icon: Icon(Icons.minimize_outlined, color: Colors.black, size: 24,)),
                        ),
                        SizedBox(width: 11,),
                        Text(count,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black,),),
                        SizedBox(width: 11,),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0XFF06AB8D),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(padding: EdgeInsets.zero, onPressed:onpressplus, icon: Icon(CupertinoIcons.plus, color: Colors.white, size: 24,)),
                        ),
                      ],
                    )

                  ],
                )
              ],
            ),
            PositionedDirectional(
              end: 1,
                bottom: 9,
                child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.delete,color: Colors.black,)))
          ],
        ),
      ),
    );
  }
}
