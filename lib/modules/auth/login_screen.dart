import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/utils/constants/timage.dart';
import 'package:shoping/utils/constants/tsize.dart';
import 'package:shoping/utils/constants/ttext.dart';

import '../../utils/helper_function/thelper_functions.dart';
import '../../widget/app_elevated_buttom.dart';
import '../../widget/app_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailcontroler;
  late TextEditingController _passwordcontroler;
  final bool _obsucre=true;

  String? erorrEmail;

  String? erorrPassword;
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
    final dark = THelperFunctions.isDarkMode(context);
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
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Text(TText.wellcome,style: Theme.of(context).textTheme.headlineMedium,),
                    Text(TText.sublogin,style: Theme.of(context).textTheme.headlineMedium,),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        Image.asset(TImage.userlogin),
                        Spacer(),
                        Image.asset(TImage.shop2login),
                        Image.asset(TImage.shop1login),
                      ],
                    ),


                  ],
                ),
              ),
          ),
          PositionedDirectional(
            bottom: 0,
            start: 0,
            end: 0,
            child: Container(
              width:375,
              height: 540,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20),)
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w,vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Text(TText.Emaillogin,style:Theme.of(context).textTheme.headlineMedium,),
                    AppTextField(hint: 'Ruslandizeed@gmail.com',keyboardType: TextInputType.emailAddress,controller: _emailcontroler,errortext: erorrEmail,),
                    SizedBox(height: 30.h),
                    Text('Password',style: Theme.of(context).textTheme.headlineMedium,),
                    AppTextField(hint: 'password',keyboardType: TextInputType.visiblePassword,controller: _passwordcontroler,errortext: erorrPassword),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: _value,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _value = newValue!;
                            });
                          },
                        ),
                        Text(TText.Rememberlogin,style: GoogleFonts.poppins(fontSize: TSize.fontxs,fontWeight: FontWeight.w400,color: Color(0XFF899B9A)),),
                        Spacer(),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, '/forget_screen');
                        }, child: Text(TText.forgotpassword,style:Theme.of(context).textTheme.headlineMedium,))
                      ],
                    ),
                    SizedBox(height: 70.h),
                    Center(
                      child: AppElevatedButtom(title: 'Sign In',onPress:(){
                        performLogin();                    },),
                    ),
                    SizedBox(height: 80.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(TText.donthaveanaccoun,style:Theme.of(context).textTheme.headlineMedium,),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, '/regester_screen');
                        }, child: Text(TText.signup,style: GoogleFonts.poppins(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Color(0xFFFF8933)),)),

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
  void performLogin(){
    if(checkData()){
      login();
    }
  }

  bool checkData(){
    if(_emailcontroler.text.isNotEmpty && _passwordcontroler.text.isNotEmpty){
      setState(() {
        erorrEmail=_emailcontroler.text.isEmpty ? 'Enter Email' : null ;
        erorrPassword=_passwordcontroler.text.isEmpty ? 'Enter Password' : null ;
      });
      return true;
    }
    setState(() {
      erorrEmail=_emailcontroler.text.isEmpty ? 'Enter Email' : null ;
      erorrPassword=_passwordcontroler.text.isEmpty ? 'Enter Password' : null ;

    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.green,
      // padding: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 10),
      margin:
      const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      dismissDirection: DismissDirection.horizontal,

      content: Text('enter data',
          style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 14)),
    ));
    return false;
  }

  void login(){
    Navigator.pushReplacementNamed(context,'/bottom_nav_screen');
  }
}




