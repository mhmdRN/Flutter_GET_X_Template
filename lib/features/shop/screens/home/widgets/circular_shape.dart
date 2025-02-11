import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class CircularShape extends StatelessWidget {
  const CircularShape({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = AppColors.white,
    this.margin,
  });
  final double? width,height;
  final double radius,padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width:width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}