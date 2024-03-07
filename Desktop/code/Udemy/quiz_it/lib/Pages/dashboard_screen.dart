import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_it/Controllers/home.controller.dart';
import 'package:quiz_it/Pages/login_screen.dart';
import 'package:quiz_it/Pages/profile.dart';
import 'package:quiz_it/Pages/settings.dart';

HomeController homeController = Get.put(HomeController());

var pages = [
  const LoginScreen(),
  const ProfileScreen(),
  const SettingsScreen(),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[homeController.selectedPage.value]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: const Color.fromARGB(255, 78, 13, 151),
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.app_registration_sharp,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          homeController.updateSelectedPage(index);
        },
      ),
    );
  }
}
