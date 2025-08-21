import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widget/OnBordingController.dart';

import '../utils/constants/tsize.dart';
import '../utils/device/tdevice_utils.dart';


class OnBordingSkip extends StatelessWidget {
  const OnBordingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top:30,right: 20,child: TextButton(onPressed: ()=>OnBordingController.instance.skipPage(), child: Text('SKIP',style: GoogleFonts.poppins(fontSize: 18.sp,color: Color(0xFF80CBC4)),),));
 }
}
