import 'package:get/get.dart';

class FruitController extends GetxController {


  final RxList<String> fruitList = <String>[
    'Pizza',
    'Burger',
    'Pasta',
    'Sushi',
    'Tacos',
    'Biryani',
    'Ramen',
    'Steak',
    'Salad',
    'Sandwich',
    'Fried Rice',
    'Curry',
    'Dumplings',
    'Kebab',
    'Noodles',
    'Hotdog',
    'Pancakes',
    'Ice Cream',
    'Donuts',
    'Falafel',
  ].obs;



  final RxList<String> selectedFruits = <String>[].obs;

  void addFruit(String value) {
    selectedFruits.add(value);
  }

  void removeFruit(String value) {
    selectedFruits.remove(value);
  }

  void toggleFruit(String value) {
    if (selectedFruits.contains(value)) {
      removeFruit(value);
    } else {
      addFruit(value);
    }
  }
}
