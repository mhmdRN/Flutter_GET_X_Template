import 'package:ecommerce_store/utils/device/device_utility.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;



  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return  Material(
      color: dark ? AppColors.primary:AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: dark? AppColors.white:AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
