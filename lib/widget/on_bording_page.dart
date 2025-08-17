import 'package:flutter/material.dart';

import '../utils/constants/tsize.dart';
import '../utils/helper_function/thelper_functions.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({
    super.key, required this.title, required this.subtitle, required this.image,
  });
  final String title ,subtitle , image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(image: AssetImage( image),
            width:THelperFunctions.screenWidth()*0.8 ,
            height:THelperFunctions.screenHeight()*0.6 ,
          ),
          Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          SizedBox(height: TSize.spaceBtwItems,),
          Text(subtitle,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),

        ],

      ),
    );
  }
}
