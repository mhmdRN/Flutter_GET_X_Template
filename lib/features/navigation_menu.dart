import "package:ecommerce_store/features/shop/screens/home/home.dart";
import "package:ecommerce_store/features/shop/screens/store/store.dart";
import "package:ecommerce_store/utils/device/device_utility.dart";
import "package:ecommerce_store/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

import "../utils/constants/colors.dart";

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = HelperFunctions.isDarkMode(context);
    return Obx(
            () =>Scaffold(
      bottomNavigationBar:  NavigationBar(
          height: 80,
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: (index) => controller.setIndex(index),
          elevation: 0,
          indicatorColor: isDark ?  AppColors.white.withOpacity(0.1) : AppColors.black.withOpacity(0.1),
          backgroundColor: isDark ? AppColors.black : AppColors.white,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: "Store",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: "Whishlist",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: "Profile",
            ),
          ],
        
        ),

      body: controller.screens[controller.currentIndex.value],
    ),);
  }
}

class NavigationController extends GetxController {
  final Rx<int> currentIndex = 0.obs;

  final List<Widget> screens = [HomeScreen(),StoreScreen(),StoreScreen(),StoreScreen(),];
  void setIndex(int index) {
    currentIndex.value = index;
  }
}