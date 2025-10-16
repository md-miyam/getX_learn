import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/res/routes/routes_name.dart';
import 'package:get_x/utils/controller.dart'; // Make sure path is correct

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final FruitController controller = Get.put(FruitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruit Selector"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          final fruit = controller.fruitList[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 4,
            child: Obx(() {
              final isSelected = controller.selectedFruits.contains(fruit);

              return ListTile(
                title: Text(
                  fruit,
                  style: const TextStyle(fontSize: 18),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: isSelected ? Colors.red : Colors.white,
                ),
                onTap: () => controller.toggleFruit(fruit),
              );
            }),
          );
        },
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed(RouteName.navigateScreen);
      },
      child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
