import 'package:ecommerce_store/common/widgets/Icons/circular_icons.dart';
import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/rounded_image.dart';
import 'package:ecommerce_store/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          /// product image slider
            ProductImageSlider(),
          /// product details
          Padding(
              padding: EdgeInsets.only(right: AppSizes.defaultSpacing, left: AppSizes.defaultSpacing, bottom: AppSizes.defaultSpacing),
            child: Column(
                children: [
                  /// Rating & Share Button
                  RatingAndShare(),
                  /// Price, title, Stock, and Brand
                  ProductMetaData(),
                  /// Attributes
                  /// Checkout Button
                  /// description
                  /// Reviews

                ],
            ),
          )
        ]),
      ),
    );
  }
}

