import 'package:ecommerce_store/common/styles/spacing_styles.dart';
import 'package:ecommerce_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: DeviceUtils.getScreenWidth() * 0.6,
              ),
              SizedBox(height: AppSizes.spaceBtwSections,),
              Text(title,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Text(subTitle,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: AppSizes.spaceBtwSections,),

              SizedBox(
                width:double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: Text(TextStrings.tContinue),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
