import 'package:get/get.dart';
import 'package:ortez/view/home_screen.dart';

class Homecontroller extends GetxController{
   var currentIndex = 0.obs;
   var pages = [HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen(),].obs;

  void changeTab(int index) {
    currentIndex.value = index;
    update();
  }
}