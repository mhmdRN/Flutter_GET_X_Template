import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/circular_image.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/section_heading.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text("Account",style: Theme.of(context).textTheme.headlineMedium!.apply(color:AppColors.white),),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections,),
                  // User Profile Card
                  UserProfileTile(),
                  const SizedBox(height: AppSizes.spaceBtwSections,),
                ],
              ),
            ),
            //body
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpacing),
              child: Column(
                children: [
                  SectionHeading(title: "Account Settings",showActionButton: false,),
                  SizedBox(height: AppSizes.spaceBtwItems,),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                    onTap: (){},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

