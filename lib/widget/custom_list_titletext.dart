import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomListTitleText extends StatelessWidget {
  const CustomListTitleText({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(title,style:Theme.of(context).textTheme.bodyMedium,),
          Spacer(),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/all_product_screen');
          }, child: Text('See all',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: Color(0XFF1CB069)),))

        ],
      ),
    );
  }
}
