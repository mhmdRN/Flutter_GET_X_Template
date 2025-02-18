import 'package:ecommerce_store/features/shop/screens/home/widgets/vertical_image_text.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index){
            return VerticalImageText(image: ImageStrings.onBoardingImage1,title: 'Box',);
          }),
    );
  }
}