import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/common/widgets/products/product_card_vertical.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'brand_show_case.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(padding: const EdgeInsets.all(AppSizes.defaultSpacing),
          child: Column(
            children: [
              const BrandShowcase(images: [ImageStrings.appLogo,ImageStrings.appLogo,ImageStrings.appLogo,],),
              const SizedBox(height: AppSizes.defaultSpacing,),
              SectionHeading(title: "You might like",onPressed: (){},),
              const SizedBox(height: AppSizes.defaultSpacing,),
              GridLayout(itemCount: 4, itemBuilder: (_, index)=> const ProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
