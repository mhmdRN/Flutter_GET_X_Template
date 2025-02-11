import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_store/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'circular_shape.dart';


class PromoSlider extends StatelessWidget {
   PromoSlider({
    super.key,
  });

  List<String> banners = [
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1,
    ImageStrings.banner1
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index,_) => controller.updatePageIndicator(index),

          ),
          items: banners.map((path) => RoundedImage(imagePath: path)).toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems,),
        Obx(
          ()=> Center(
            child: Wrap(
              //mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularShape(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i ? AppColors.black : AppColors.grey,
                    margin: EdgeInsets.only(right: 10,bottom: 10),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


