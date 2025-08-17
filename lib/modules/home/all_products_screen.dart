import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_item_wish_list.dart';
class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({super.key});

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation:0,
        backgroundColor: Color(0XFF06AB8D),
        title: Text('All Products',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.list,color: Colors.white,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart,color: Colors.white,)),
        ],
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 25),
        children: [
          GridView.builder(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 13,crossAxisSpacing: 13,childAspectRatio: 160/190), itemBuilder: (context,index){
            return GestureDetector(onTap: (){
              Navigator.pushNamed(context, '/details_screen');
            },
                child: CustomItemWishList(title: 'Imac 27 Inch 5k',subtitle: 'Applestore',price: '\$999.99',discount: '\$1,322.99'));
          })
        ],
      ),
    );
  }
}
