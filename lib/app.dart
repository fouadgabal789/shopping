import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoping/modules/onbording/onbording_screen.dart';
import 'package:shoping/utils/themes/theme.dart';

import 'modules/auth/forget_password.dart';
import 'modules/auth/login_screen.dart';
import 'modules/auth/regester_screen.dart';
import 'modules/auth/reset_password.dart';
import 'modules/home/all_products_screen.dart';
import 'modules/home/bottom_navigation_bar_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/home/my_cart_screen.dart';
import 'modules/home/shoes_detail_screen.dart';
import 'modules/profile/my_account_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context,child){
        return GetMaterialApp(
            themeMode: ThemeMode.system,
            theme:TAppTheme.LightTheme,
            darkTheme:TAppTheme.DarkTheme,

            debugShowCheckedModeBanner: false,
            initialRoute:'/On_bording_Screen',
            routes: {
              '/login_screen': (context) => const LoginScreen(),
              '/regester_screen': (context) => const RegesterScreen(),
              '/forget_screen': (context) => const ForgetPassword(),
              '/rest_screen': (context) => const ResetPassword(),
              '/home_screen': (context) => const HomeScreen(),
              '/all_product_screen': (context) => const AllProductsScreen(),
              '/details_screen': (context) => const ShoesDetailScreen(),
              '/mycart_screen': (context) => const MyCartScreen(),
              '/myacount_screen': (context) => const MyAccountScreen(),
              '/bottom_nav_screen': (context) => const BottomNavigationBarScreen(),

              '/On_bording_Screen': (context) => const OnbordingScreen(),



            }
        );
      },
    );
  }
}
