import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpacing),
          child: Column(
            children: [
              Image(
                image: AssetImage(ImageStrings.appLogo),
                width: DeviceUtils.getScreenWidth() * 0.6,
              ),
              SizedBox(height: AppSizes.spaceBtwSections,),
              Text(TextStrings.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Text(TextStrings.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: AppSizes.spaceBtwSections,),

              SizedBox(
                width:double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text(TextStrings.done),),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(TextStrings.resendEmail),),)
            ],
          ),
        ),
      ),
    );
  }
}
