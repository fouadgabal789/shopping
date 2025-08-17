import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_elevated_buttom.dart';

class CustomAddCart extends StatelessWidget {
  const CustomAddCart({
    super.key, required this.count, required this.onPressPlus, required this.onPressMin,
  });
  final int count;
  final void Function() onPressPlus;
  final void Function() onPressMin;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsetsDirectional.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                  width: 1,
                  color: Color(0XFFC0C8C7)
              )
          ),
          child: IconButton(onPressed:onPressMin
              , icon: const Icon(CupertinoIcons.minus,color: Colors.black,)),
        ),
        SizedBox(width: 13,),
        Text(count.toString(),style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
        SizedBox(width: 13,),
        Container(
          padding: EdgeInsetsDirectional.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                  width: 1,
                  color: Color(0XFFC0C8C7)
              )
          ),
          child: IconButton(onPressed:onPressPlus
              , icon: const Icon(CupertinoIcons.plus,color: Colors.black,)),
        ),
        Spacer(),
        AppElevatedButtom(title: 'Add to cart', onPress: (){},isvalid: true,)

      ],
    );
  }
}