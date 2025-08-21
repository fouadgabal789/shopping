import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoping/utils/constants/colors.dart';
import 'package:shoping/utils/constants/timage.dart';
import 'package:shoping/utils/constants/tsize.dart';
import 'package:shoping/utils/constants/ttext.dart';
import 'package:shoping/utils/helper_function/thelper_functions.dart';
import 'package:shoping/widget/OnBordingController.dart';

import '../../utils/device/tdevice_utils.dart';
import '../../widget/on_bording_page.dart';
import '../../widget/on_bording_skip.dart';
class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    final controler=Get.put(OnBordingController());
    int _currentPage= controler.currentPageIndex.value;

    return Scaffold(
      backgroundColor: dark? Color(0xFF06372E):Color(0xFFFFFFFF),
      body: Stack(
        children: [
          PageView(
            controller:controler.pageController,
            onPageChanged: controler.updatePageIndecator,

            children: [
              //OnBordingPage(title: TText.onbordingtitle1,subtitle: TText.onbordingsubtitle1,image: TImage.onbording1,),              OnBordingPage(title: TText.onbordingtitle1,subtitle: TText.onbordingsubtitle1,image: TImage.onbording1,),
              OnBordingPage(title: TText.onbordingtitle2,subtitle: TText.onbordingsubtitle2,image: TImage.onbording2,),
              OnBordingPage(title: TText.onbordingtitle3,subtitle: TText.onbordingsubtitle3,image: TImage.onbording3,),
              OnBordingPage(title: TText.onbordingtitle3,subtitle: TText.onbordingsubtitle3,image: TImage.onbording3,),

            ],
          ),
          OnBordingSkip(),
          OnBordingNextButtom(),
          // Indicator Row
          PositionedDirectional(
            start: 20,
            bottom: 55,
            child: Obx(() {
              final currentPage = controler.currentPageIndex.value;
              return Row(
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width:  currentPage == index?30:15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: currentPage == index
                          ? const Color(0xFFFF8933) // selected color
                          : const Color(0xFFF5B5A7), // unselected color
                    ),
                  );
                }),
              );
            }),
          ),


        ],
      ),
    );
  }
}

class OnBordingNextButtom extends StatelessWidget {
   OnBordingNextButtom({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
        bottom: 30,
        child: Container(
          width: 60,
          height: 60,
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:Color(0xFFFF8933)),
          onPressed: ()=>OnBordingController.instance.netPage(), child: Icon(CupertinoIcons.arrow_right_to_line,color: Colors.white,)),
        ));
  }
}
