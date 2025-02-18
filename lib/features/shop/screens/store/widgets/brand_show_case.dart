import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../home/widgets/rounded_container.dart';
import 'brand_card.dart';


class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: true,),
          ///top 3 brands product images
          Row(
            children: images.map((image) => brandTopProductImageWidget(context,image)).toList(),

          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(BuildContext context,String image) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: HelperFunctions.isDarkMode(context) ? AppColors.darkGrey : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Image(fit: BoxFit.contain,image: AssetImage(image),),
      ),
    );
  }
}
