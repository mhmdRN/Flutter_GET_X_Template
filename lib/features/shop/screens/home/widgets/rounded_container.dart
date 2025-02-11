import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.child,
      this.padding,
      this.margin,
        this.showBorder = false,
       this.borderColor = AppColors.white,
       this.backgroundColor = AppColors.white,
       this.radius = AppSizes.lgCardRadius
      });

  final double? width,height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor,backgroundColor;
  final EdgeInsetsGeometry? padding,margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}
