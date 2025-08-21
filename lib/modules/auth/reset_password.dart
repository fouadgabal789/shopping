import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/utils/constants/ttext.dart';

import '../../utils/helper_function/thelper_functions.dart';
import '../../widget/app_elevated_buttom.dart';
import '../../widget/app_text_field.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
    final dark =THelperFunctions.isDarkMode(context);

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

                  Text('Reset',style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w700,color: Colors.white),),
                  Text('Reset your password',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
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
              height: 556,
              decoration: BoxDecoration(
                  color:dark? Color(0xFF06372E):Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20),)
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),

                    Text(TText.enternewpassword,style:Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.start,),
                    SizedBox(height: 18),
                    Text(TText.newpass,style:Theme.of(context).textTheme.bodyMedium,),
                    AppTextField(hint: 'New password',keyboardType: TextInputType.text,controller: _emailcontroler,),
                    SizedBox(height: 28),
                    Text(TText.confirmpassword,style:Theme.of(context).textTheme.bodyMedium,),
                    AppTextField(hint: 'Confirm password',keyboardType: TextInputType.text,controller: _emailcontroler,),
                    SizedBox(height: 200),
                    Center(
                      child: AppElevatedButtom(title: 'Change Password',onPress:(){  },),
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
