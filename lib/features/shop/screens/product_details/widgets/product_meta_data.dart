import 'package:ecommerce_store/common/texts/product_title_text.dart';
import 'package:ecommerce_store/common/widgets/products/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/circular_image.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/rounded_container.dart';
import 'package:ecommerce_store/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:ecommerce_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price & Sale Price
        Row(
           children:[
             /// sale Tag
             RoundedContainer(
               radius:  AppSizes.sm,
               backgroundColor: AppColors.appSecondaryColor.withOpacity(0.8),
               padding: EdgeInsets.symmetric(horizontal: AppSizes.sm,vertical: AppSizes.xs),
               child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color:AppColors.black)),
             ),
             const SizedBox(width: AppSizes.spaceBtwItems),
             /// price
             Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
             SizedBox(width: AppSizes.spaceBtwItems,),
             ProductPriceText(price: '175', isLarge: true,),


           ]
        ),

        ///title
        ProductTitleText(title: 'Green Nike Shirt'),
        SizedBox(height: AppSizes.spaceBtwItems / 1.5,),

        ///Stock Status
        Row(
          children: [
            ProductTitleText(title: 'Status'),
        Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
        SizedBox(height: AppSizes.spaceBtwItems / 1.5,),
          ],
        ),

        ///Brand
        Row(
          children: [
            CircularImage(image: ImageStrings.mailLogo,
            width: 32,height: 32,overlayColor: darkMode ? AppColors.white: AppColors.dark,),
        BrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium,)

          ],
        )
      ],
    );
  }
}
