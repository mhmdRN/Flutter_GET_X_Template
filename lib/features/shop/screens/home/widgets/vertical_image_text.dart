import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';


class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    this.onTap,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor
  });

  final Color textColor;
  final String image,title;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right:AppSizes.spaceBtwItems),
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
                child: Image(image: AssetImage(image),fit: BoxFit.cover,color: backgroundColor),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems/2,),
            Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),),
          ],
        ),
      ),
    );
  }
}

