import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widget/app_elevated_buttom.dart';

import '../../widget/custom_add_cart.dart';
import '../../widget/custom_details_product.dart';
class ShoesDetailScreen extends StatefulWidget {
  const ShoesDetailScreen({super.key});

  @override
  State<ShoesDetailScreen> createState() => _ShoesDetailScreenState();
}

class _ShoesDetailScreenState extends State<ShoesDetailScreen> {
  String selectedColor = 'Green';
  final List<String> colors = ['Green', 'Black', 'Silver', 'Blue'];
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFFFFFFF),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart,color: Colors.black,)),
        ],
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 25),
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 290,
                    decoration: BoxDecoration(
                      color: Color(0XFFF3D9E8)
                    ),
                    child: Image.asset('lib/images/imagedetailslap.png'),
                  ),
                  PositionedDirectional(
                    end: 30,
                    bottom: -20,
                    child: Container(
                      width: 44,
                      height:44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1), // Soft shadow
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 4), // X and Y offset
                            ),
                          ]
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,color: Colors.black,)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text('Imac 27 Inch 5k',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Text('\$999.99',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0XFF02A88A)),),
                  
                ],
              ),
              Align(alignment: AlignmentDirectional.centerEnd,
                  child: Text('1,322.99',textAlign: TextAlign.end,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFFF25822),decoration: TextDecoration.lineThrough, decorationThickness: 2,),)),
              CustomDetailsProduct(title: 'Details', nmaeproduct: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND', Processor: 'Processor Core i3', IMAC: 'IMAC (Mid 2010)', Memory: 'Memory 4GB 1333 MHz DDR3 (bisa upgrade)', Built: 'Built In Display 21,5 Inch (1920 X 1080 )'),
              SizedBox(height: 20),
              Align(alignment: Alignment.centerLeft,
                  child: Text('Color',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w700,color: Colors.black),)),
              SizedBox(height: 10),
              Row(
                children: colors.map((color) {
                  final isSelected = selectedColor == color;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = color;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue.shade50 : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: Text(
                        color,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 50),
              CustomAddCart(count: _count,onPressPlus: (){setState(() {_count++;});},onPressMin: (){setState(() {
                if(_count<=0){
                  _count=0;
                }else{
                  _count--;
                }
              });},),



            ],
          ),
        ],
      ),
    );
  }
}


