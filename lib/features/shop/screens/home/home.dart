
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/circular_shape.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/curved_edges_widgets.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/custom_curved_edges.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/rounded_image.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/section_heading.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:ecommerce_store/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

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
            CurvedEdgesWidget(
              widget: Container(
                color: AppColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top:-150,right: -250,child: CircularShape(backgroundColor: AppColors.textWhiteColor.withOpacity(0.1),)),
                      Positioned(top:100,right: -300,child: CircularShape(backgroundColor: AppColors.textWhiteColor.withOpacity(0.1),)),
                       Column(
                        children: [
                          HomeAppBar(),
                          SizedBox(height: AppSizes.spaceBtwSections,),
                          SearchTextField(title: "Search in Store"),
                          SizedBox(height: AppSizes.spaceBtwSections,),
                          Padding(padding: const EdgeInsets.only(left: AppSizes.defaultSpacing),
                          child: Column(
                            children: [
                              Row(children: [
                                Text('Popular Categories',style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white), maxLines: 1,overflow: TextOverflow.ellipsis,),
                                TextButton(onPressed: (){},child: const Text('f'),)
                              ],),
                              //categories
                              SizedBox(
                                height: 80,
                                child: ListView.builder(
                                    itemCount: 6,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_,index){
                                      return Padding(
                                        padding: EdgeInsets.only(right:AppSizes.spaceBtwItems),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 56,
                                              height: 56,
                                              padding: const EdgeInsets.all(AppSizes.sm),
                                              decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius: BorderRadius.circular(100)
                                              ),
                                              child: Center(
                                                child: Image(image: AssetImage(ImageStrings.onBoardingImage1),fit: BoxFit.cover,color: AppColors.dark),
                                              ),
                                            ),
                                            const SizedBox(height: AppSizes.spaceBtwItems/2,),
                                            Text('Box',style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.white),),
                                          ],
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),

                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //carousel slider
            Padding(padding: EdgeInsets.all(AppSizes.defaultSpacing),
              child: Column(
                children: [
                  PromoSlider(),
                  SizedBox(height: AppSizes.spaceBtwSections,),
                  //Heading
                  SectionHeading(title: 'Popular Products',onPressed: (){},),
                  //GridView
                  GridView.builder(
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    mainAxisSpacing: AppSizes.gridSpacing,
                    crossAxisSpacing: AppSizes.gridSpacing,
                    mainAxisExtent: 288,
                  ),
                      itemBuilder: (_, index) => ProductCardVertical(),
                  ),


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



