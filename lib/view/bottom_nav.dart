import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homecontroller.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});
  final tabController = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => tabController.pages[tabController.currentIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        currentIndex: tabController.currentIndex.value,
        onTap: (int index) {
          tabController.changeTab(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/fileimage4.jpeg'),
              ),
              label: '')
        ],
      ),
    );
  }
}
