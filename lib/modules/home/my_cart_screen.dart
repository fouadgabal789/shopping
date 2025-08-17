import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_item_cart.dart';
class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}
int _count=0;
class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Your Cart',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,)),
        ],
      ),
      body: Container(

        decoration: BoxDecoration(
          color: Color(0XFFE9F1F5)
        ),
        child: GridView.builder(itemCount: 8,
            shrinkWrap: true,
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 10,childAspectRatio: 335/125), itemBuilder: (context,index){
          return CustomItemCart(title: 'Smart Watch T80',price: '\$268.20',onpressplus: (){setState(() {_count++;});},onpressmin: (){setState(() {
            if(_count<=0){
              _count=0;
            }else{
              _count--;}});},count: _count.toString(),);
            }),
      ),
    );
  }
}
