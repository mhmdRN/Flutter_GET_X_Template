import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.title,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String title;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpacing),
      child: Container(
        width:DeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
            color:showBackground ? isDark ? AppColors.dark : AppColors.light :  Colors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.lgCardRadius),
            border:showBorder ? Border.all(color: AppColors.grey) : null
        ),
        child: Row(children: [
            Icon(icon, color: AppColors.darkGrey,),
            const SizedBox(width: AppSizes.spaceBtwItems,),
            Text(title,style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ),
    );
  }
}

