import 'package:ecommerce_store/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_store/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/circular_image.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/section_heading.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpacing),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(image: ImageStrings.banner2,width: 80,height: 80,),
                    TextButton(onPressed: (){},child:Text('Change Profile Picture'))
                  ],
                ),
              ),
              ///details
              SizedBox(height: AppSizes.spaceBtwItems / 2,),
              Divider(),
              SizedBox(height: AppSizes.spaceBtwItems,),
              SectionHeading(title: 'profile Information',showActionButton: false,),
              SizedBox(height: AppSizes.spaceBtwItems,),
              ProfileMenu(title:'Name',value:'Coding with mohammad',onPressed: (){},),

              ///close account button
              Divider(),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text("Close Account", style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
