import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/Icons/circular_icons.dart';
import '../../../../../common/widgets/appbar/app_bar.dart';
import '../../../../../common/widgets/products/curved_edges_widget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../home/widgets/rounded_image.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = HelperFunctions.isDarkMode(context);

    return CurvedEdgesWidget(
        child: Container(
          color: dark ? AppColors.darkerGrey : AppColors.light,
          child: Stack(
            children: [
              /// Main large image
              SizedBox(
                height:350,
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.productImageRadius*2),
                  child: Center(
                    child: Image(
                      image: AssetImage(ImageStrings.banner1),
                    ),
                  ),
                ),
              ),

              /// Image Slider
              Positioned(
                right:0,
                bottom: 0,
                left: AppSizes.defaultSpacing,
                child: SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (_, __) => SizedBox(
                      width: AppSizes.spaceBtwItems,
                    ),
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, index) => RoundedImage(
                        width: 80,
                        backgroundColor: dark ? AppColors.dark : AppColors.white,
                        border: Border.all(color: AppColors.primary),
                        padding: EdgeInsets.all(AppSizes.sm),
                        imagePath: ImageStrings.google),
                  ),
                ),
              ),
              CustomAppBar(
                showBackArrow: true,
                actions: [
                  CircularIcon(isDark: dark, icon: Iconsax.heart5,color: Colors.red,)
                ],
              )
            ],
          ),
        ));
  }
}

