

import 'dart:ffi';

import 'package:ecommerce_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {

   OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
  final bool isDark = HelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight(),
        left: AppSizes.defaultSpacing,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.updatePageIndicator,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: isDark ? AppColors.dark : AppColors.light,dotHeight: 5),
        ));
  }
}