import 'package:flutter/material.dart';
import 'package:shoping/widget/OnBordingController.dart';

import '../utils/constants/tsize.dart';
import '../utils/device/tdevice_utils.dart';


class OnBordingSkip extends StatelessWidget {
  const OnBordingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top:TDeviceUtils.getStatusBarHeight( ),right: TSize.defaultSpace,child: TextButton(onPressed: ()=>OnBordingController.instace.skipPage(), child: Text('SKIP'),));
  }
}
