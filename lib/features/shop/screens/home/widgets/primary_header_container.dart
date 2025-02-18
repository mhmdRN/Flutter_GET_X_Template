import 'package:ecommerce_store/features/shop/screens/home/widgets/circular_shape.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/curved_edges_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';


class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      widget: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(top:-150,right: -250,child: CircularShape(backgroundColor: AppColors.textWhiteColor.withOpacity(0.1),)),
            Positioned(top:100,right: -300,child: CircularShape(backgroundColor: AppColors.textWhiteColor.withOpacity(0.1),)),
            child
          ],
        ),
      ),
    );
  }
}