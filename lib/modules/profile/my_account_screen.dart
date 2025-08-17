import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widget/app_elevated_buttom.dart';

import '../../widget/app_text_field.dart';
class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  late TextEditingController _emailcontroler;
  late TextEditingController _namecontroler;
  late TextEditingController _phonecontroler;
  late TextEditingController _countrycontroler;
@override
  void initState() {
  _emailcontroler =TextEditingController();
  _countrycontroler =TextEditingController();
  _namecontroler =TextEditingController();
  _phonecontroler =TextEditingController();

  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFF06AB8D),
        title: Text('My Account',style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF06AB8D)
            ),
          ),
          PositionedDirectional(
            top: 87,
            start: 25,
            end: 25,
            child: Container(
              width: 325,
              height: 560,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding:EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Center(child: Text('Saul Goodmate',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),)),
                    Center(child: Text('saulgo35@gmail.com',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: Color(0XFFAAAAAA)),)),
                    SizedBox(height: 10,),
                    Text('Full Name',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: 'Didin Sumargodon',keyboardType: TextInputType.text,controller: _namecontroler,),
                    SizedBox(height: 10,),
                    Text('Email Address',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: 'Sumargodididin@gmail.com',keyboardType: TextInputType.emailAddress,controller: _emailcontroler,),
                    SizedBox(height: 10,),
                    Text('Phone Number',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: '+1 452 12435 1241',keyboardType: TextInputType.phone,controller: _phonecontroler,),
                    SizedBox(height: 10,),
                    Text('Country',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFF8B9E9E)),),
                    AppTextField(hint: 'United States',keyboardType: TextInputType.text,controller: _countrycontroler,),
                    SizedBox(height: 80,),
                    AppElevatedButtom(title: 'Save Changes', onPress: (){})



                  ],
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: 142,
            end: 142,
            top: 40,
            child: Container(
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent

              ),
              child: Image.asset('lib/images/profileimage.png'),
            ),
          )
        ],
      ),
    );
  }
}
