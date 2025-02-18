
import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/circular_shape.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/curved_edges_widgets.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/section_heading.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/input_fields/search_textfield.dart';
import '../../../../common/widgets/products/cart_menu_icon.dart';
import '../../../../common/widgets/products/product_card_vertical.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections,),
                  const SearchTextField(title: "Search in Store"),
                  const SizedBox(height: AppSizes.spaceBtwSections,),
                  Padding(padding: const EdgeInsets.only(left: AppSizes.defaultSpacing),
                    child: Column(
                      children: [
                        Row(children: [
                          Text('Popular Categories',style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white), maxLines: 1,overflow: TextOverflow.ellipsis,),
                          TextButton(onPressed: (){},child: const Text('f'),)
                        ],),
                        //categories
                        HomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections,),
                ],
              ),
            ),
            //carousel slider
            Padding(padding: const EdgeInsets.all(AppSizes.defaultSpacing),
              child: Column(
                children: [
                  PromoSlider(),
                  const SizedBox(height: AppSizes.spaceBtwSections,),
                  //Heading
                  SectionHeading(title: 'Popular Products',onPressed: (){},),
                  //GridView
                  GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical())
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextStrings.appName,style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey),),
          Text(TextStrings.appTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.grey),)
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: (){}),
      ],
    );
  }
}



