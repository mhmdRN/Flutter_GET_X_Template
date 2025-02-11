import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  CartCounterIcon({super.key, required this.onPressed});

  Color iconColor = AppColors.white;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    iconColor = HelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.black;
    return Stack(
      children: [
      IconButton(icon: Icon(Iconsax.shopping_bag, color: iconColor),onPressed: onPressed),
        Positioned(
        right: 0,
        child: Container(
          width:18,
          height: 18,
          decoration: BoxDecoration(color: AppColors.black, borderRadius: BorderRadius.circular(100),),
          child: Center(
            child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: iconColor,fontSizeFactor: 0.8),),
          ),
        ),
      )
    ]

    );
  }
}
