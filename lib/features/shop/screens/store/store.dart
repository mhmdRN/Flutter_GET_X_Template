import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/common/widgets/input_fields/search_textfield.dart';
import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/common/widgets/products/cart_menu_icon.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/section_heading.dart';
import 'package:ecommerce_store/features/shop/screens/store/widgets/brand_card.dart';
import 'package:ecommerce_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/tab_bar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text("Store",style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            CartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled){
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: HelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpacing),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: AppSizes.spaceBtwItems,),
                      const SearchTextField(title: 'Search in Store',showBorder: true,showBackground: false,padding: EdgeInsets.zero,),
                      const SizedBox(height: AppSizes.defaultSpacing,),
                      SectionHeading(title: 'Featured Brands',showActionButton: true,onPressed: (){},),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5,),

                      GridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                        return const BrandCard(showBorder: false ,);
                      } )
                    ],
                  ),
                ),

                bottom: const CustomTabBar(
                  tabs: [
                    Tab(child: Text("Sports"),),
                    Tab(child: Text("Furniture"),),
                    Tab(child: Text("Electronics"),),
                    Tab(child: Text("Clothes"),),
                    Tab(child: Text("Cosmetics"),),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        )
      ),
    );
  }
}
