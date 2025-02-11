import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/common/widgets/products/cart_menu_icon.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text("Store",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: HelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white,
              expandedHeight: 440,
            ),
          ];
        },
        body: Container(),
      )
    );
  }
}