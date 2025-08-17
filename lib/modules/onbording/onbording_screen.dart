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
    final controler=Get.put(OnBordingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller:controler.pageController,
            onPageChanged: controler.updatePageIndecator,
            children: [
              OnBordingPage(title: TText.onbordingtitle1,subtitle: TText.onbordingsubtitle1,image: TImage.onbording1,),              OnBordingPage(title: TText.onbordingtitle1,subtitle: TText.onbordingsubtitle1,image: TImage.onbording1,),
              OnBordingPage(title: TText.onbordingtitle2,subtitle: TText.onbordingsubtitle2,image: TImage.onbording2,),
              OnBordingPage(title: TText.onbordingtitle3,subtitle: TText.onbordingsubtitle3,image: TImage.onbording3,),
            ],
          ),
          OnBordingSkip(),
          OnBordingNextButtom()

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
    final dark =THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSize.defaultSpace,
        bottom: 10,
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:dark?TColors.green: Colors.black),
        onPressed: ()=>OnBordingController.instace.netPage(), child: Icon(CupertinoIcons.arrow_right_to_line)));
  }
}
