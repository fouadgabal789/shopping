import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/modules/home/side_drawer.dart';
import 'package:shoping/widget/categoriy_Item.dart';
import 'package:shoping/widget/widget_text_field.dart';

import '../../widget/custom_item_wish_list.dart';
import '../../widget/custom_list_titletext.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchcontroller;
  late PageController _pageController;
  int _currentPage=0;
  @override
  void initState() {
    super.initState();
    _searchcontroller =TextEditingController();
    _pageController=PageController(viewportFraction: 0.7,initialPage: 1);
  }
  @override
  void dispose() {
    super.dispose();
    _searchcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: false,
      
      appBar: AppBar(
        backgroundColor: Color(0XFF06AB8D),
        elevation: 0,
        title: Text('Home',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.list_outlined,size: 18,color: Colors.white,)),
        actions: [IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined),color: Colors.white,),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF06AB8D),

            ),
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height:20.h,),
                  WidgetTextField(hint: 'Search product here', controller: _searchcontroller, keybord: TextInputType.text,suffix: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search,color: Colors.black,),),)
                ],
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            start: 0,
            end: 0,
            child: Container(
              width: 375.w,
              height: 600.h,
              decoration: BoxDecoration(
                color: Color(0XFFE9F1F5)
              ),
              child: ListView(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                children: [
                  ConstrainedBox(constraints: BoxConstraints(maxHeight: 100,),
                  child: GridView.builder(scrollDirection: Axis.horizontal,
                       itemCount: 5,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 10,mainAxisExtent: 77), itemBuilder: (context,index){
                    return CategoriyItem(title: 'Electronic');
    }),
                  ),
                  ConstrainedBox(constraints: BoxConstraints(maxHeight: 125),
                  child: PageView.builder(itemCount: 3,onPageChanged: (int currentPage){
                    setState(() {
                      _currentPage=currentPage;
                    });
                  },controller: _pageController,physics: BouncingScrollPhysics(),itemBuilder:(context,index){
                    return Container(
                      width: double.infinity,
                      height: 120,
                      margin: EdgeInsetsDirectional.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Color(0XFFDEDDFF),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image.asset('lib/images/laptop2.png'),
                    );
                  } ),),
                  CustomListTitleText(title: 'New Product',),
                  GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 13,crossAxisSpacing: 13,childAspectRatio: 160/190), itemCount: 20,itemBuilder: (context,index){
                        return CustomItemWishList(title: 'Imac 27 Inch 5k',subtitle: 'Applestore',price: '\$999.99',discount: '\$1,322.99',);

                  })


                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}





