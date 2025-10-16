import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NavigateScreen extends StatelessWidget {
  const NavigateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_rounded)),
        title: Text('Navigate screen'),
      ),

      body: Center(child: Text('Navigate screen with GetX',style: TextStyle(fontSize: 25,color: Colors.black),)),
    );
  }
}
