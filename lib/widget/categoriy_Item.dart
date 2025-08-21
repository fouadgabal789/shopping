import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/timage.dart';


class CategoriyItem extends StatelessWidget {
  const CategoriyItem({
    required this.title,
    this.magin=8,
    super.key,
  });
  final String title;
  final double magin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsetsDirectional.only(end: magin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFFFFFF)
            ),
            child: Image.asset(TImage.laptop,scale: 2,),
          ),
          SizedBox(height: 10),
          Text(title,style:Theme.of(context).textTheme.labelMedium)
        ],
      ),
    );
  }
}