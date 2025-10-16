import 'package:get/get.dart';
import 'package:get_x/HomeScreen/home_screen.dart';
import 'package:get_x/NavigateScreen/navigate_screen.dart';
import 'package:get_x/SplashScreen/splash_screen.dart';
import 'package:get_x/res/routes/routes_name.dart';

class AppRoute{

  static appRoute() => [
    GetPage(name: RouteName.splashScreen , page: ()=> SplashScreen(),transition: Transition.cupertinoDialog),
    GetPage(name: RouteName.homeScreen , page: ()=> HomeScreen(),transition: Transition.cupertinoDialog),
    GetPage(name: RouteName.navigateScreen , page: ()=> NavigateScreen(),transition: Transition.cupertinoDialog),

  ];

}