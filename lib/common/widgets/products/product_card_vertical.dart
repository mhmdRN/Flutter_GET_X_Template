import 'package:ecommerce_store/common/widgets/products/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/rounded_image.dart';
import 'package:ecommerce_store/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/shop/screens/home/widgets/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/shadow_style.dart';
import '../../texts/product_title_text.dart';
import '../Icons/circular_icons.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ()=> Get.to(() => ProductDetailScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: HelperFunctions.isDarkMode(context) ? AppColors.darkGrey : AppColors.white,
        ),
        child: Column(
          children: [
              RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  const RoundedImage(imagePath: ImageStrings.banner1,height: 250,),
                  Positioned(
                    top:12,
                    child: RoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.primary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm,vertical: AppSizes.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white),),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: CircularIcon(isDark: isDark, icon: Iconsax.heart5, color:Colors.red))
                ],
              ),
            ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2,),
              const Padding(padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                children: [
                  ProductTitleText(title:"Green Nike Air Shoes",smallSize: true,),
                  SizedBox(height: AppSizes.spaceBtwItems / 2,),
                  BrandTitleWithVerifiedIcon(
                    title: 'Nike',

                  ),
                 // SizedBox
                ],
              ),
            ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.sm),
                    child: Text(
                      '\$35.5',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ), // Text
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.mdCardRadius),
                        bottomRight:
                        Radius.circular(AppSizes.productImageRadius),
                      ),
                    ), // BorderRadius.only
                    // BoxDecoration
                    child: const SizedBox(
                      width: AppSizes.lgIcon * 1.2,
                      height: AppSizes.lgIcon * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: AppColors.white)),
                    ),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}




