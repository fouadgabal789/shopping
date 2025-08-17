import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/app_elevated_buttom.dart';
import '../../widget/app_text_field.dart';
class RegesterScreen extends StatefulWidget {
  const RegesterScreen({super.key});

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

class _RegesterScreenState extends State<RegesterScreen> {
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

                  Text('Register',style: GoogleFonts.poppins(fontSize: 28.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                  Text('Enter your personal details to create your acount',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                ],
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            end: 0,
            start: 0,
            child: Container(
              width:380,
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
                    Row(),
                    SizedBox(height: 10.h),
                    Text('Full Name',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: 'Zeed Ruslandi',keyboardType: TextInputType.text,controller: _emailcontroler,),
                    SizedBox(height: 20.h),
                    Text('Email Address',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: 'password',keyboardType: TextInputType.emailAddress,controller: _passwordcontroler),
                    SizedBox(height: 20.h),
                    Text('Phone Number',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: '+62 985 845 91240 ',keyboardType: TextInputType.phone,controller: _passwordcontroler),
                    SizedBox(height: 20.h),
                    Text('Password',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: '....................',keyboardType: TextInputType.visiblePassword,controller: _passwordcontroler),
                    SizedBox(height: 20.h),
                    Text('Confirm Password',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: '.....................',keyboardType: TextInputType.visiblePassword,controller: _passwordcontroler),
                    SizedBox(height: 60.h),

                    Center(
                      child: AppElevatedButtom(title: 'Sign Up',onPress:(){  },),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have an account?',style: GoogleFonts.poppins(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context,  '/login_screen');
                        }, child: Text('Sign In',style: GoogleFonts.poppins(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Color(0xFFFF8933)),)),

                      ],
                    )

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
