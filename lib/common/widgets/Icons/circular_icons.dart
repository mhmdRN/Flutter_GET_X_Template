import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.isDark,
    this.width,
    this.height,
    this.size,
    required this.icon,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });

  final bool isDark;
  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor,color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : isDark
                  ? AppColors.white.withOpacity(0.9)
                  : AppColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(onPressed: onPressed,icon: Icon(icon,color: color,size: size,),),
    );
  }
}
