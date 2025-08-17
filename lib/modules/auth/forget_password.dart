import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/app_elevated_buttom.dart';
import '../../widget/app_text_field.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailcontroler;
  late TextEditingController _passwordcontroler;
  final bool _obsucre=true;
  @override
  void initState() {
    super.initState();
    _emailcontroler=TextEditingController();
    _passwordcontroler=TextEditingController();

  }
  bool _value = false;

  @override
  void dispose() {
    super.dispose();
    _emailcontroler.dispose();
    _passwordcontroler.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0XFF018148),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0XFF018148)
            ),
            child:Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(),

                  Text('Forget',style: GoogleFonts.poppins(fontSize: 28.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                  Text('Forget your password',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                ],
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            end: 0,
            start: 0,
            child: Container(
              width:380.w,
              height: 700.h,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20),)
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please enter your email address below you will receive a link to create a new password via email',style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.black),textAlign: TextAlign.start,),
                    SizedBox(height: 70.h),
                    Text('Email Address',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: 'Email Address',keyboardType: TextInputType.text,controller: _emailcontroler,),
                    SizedBox(height: 250.h),
                    Center(
                      child: AppElevatedButtom(title: 'Sign Up',onPress:(){
                        Navigator.pushNamed(context, '/rest_screen');
                      },),
                    ),

                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
