import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/res/routes/routes.dart';
import 'package:get_x/res/routes/routes_name.dart';
import 'package:get_x/utils/language.dart';
import 'HomeScreen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

      // Routing ||
      initialRoute: RouteName.homeScreen,
      getPages: AppRoute.appRoute(),

      // Localization ||
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      translations: Language(),

    );
  }
}
