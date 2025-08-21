import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/utils/constants/timage.dart';

import '../../utils/helper_function/thelper_functions.dart';
class SeplashScreen extends StatefulWidget {
  const SeplashScreen({super.key});

  @override
  State<SeplashScreen> createState() => _SeplashScreenState();
}


class _SeplashScreenState extends State<SeplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushNamed(context, '/On_bording_Screen');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Container(
        color:dark? Color(0xFF06372E):Color(0xFFFFFFFF) ,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(),
            Container(
              width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFFF8933),
                  shape: BoxShape.circle
                ),
                child: Image.asset('assets/images/11111111.png',width: 250,height: 100,)),
            SizedBox(height: 10.h,),
            Text("Shopping",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xFF80CBC4)),)
          ],
        ),
      ),
    );
  }
}
