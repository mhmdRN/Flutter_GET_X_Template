import 'package:ecommerce_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_store/utils/constants/colors.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/constants/text_strings.dart';
import 'package:ecommerce_store/utils/device/device_utility.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboarding_dotnavigation.dart';
import 'widgets/onboarding_nextbutton.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImageStrings.onBoardingImage1,
                title: TextStrings.onBoardingTitle1,
                subTitle: TextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ImageStrings.onBoardingImage2,
                title: TextStrings.onBoardingTitle2,
                subTitle: TextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ImageStrings.onBoardingImage3,
                title: TextStrings.onBoardingTitle3,
                subTitle: TextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
