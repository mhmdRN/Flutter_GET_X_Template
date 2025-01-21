import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: AppSizes.appBarHeight,
      left: AppSizes.defaultSpacing,
      right: AppSizes.defaultSpacing,
      bottom: AppSizes.defaultSpacing);
}
