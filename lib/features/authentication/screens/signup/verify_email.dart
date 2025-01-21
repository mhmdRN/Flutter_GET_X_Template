import 'package:ecommerce_store/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_store/features/authentication/screens/login/login.dart';
import 'package:ecommerce_store/utils/constants/image_strings.dart';
import 'package:ecommerce_store/utils/device/device_utility.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(() => LoginScreen()),icon: Icon(CupertinoIcons.clear) ,)
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpacing),
          child: Column(
            children: [
              Image(
                image: const AssetImage(ImageStrings.mailLogo),
                width: DeviceUtils.getScreenWidth() * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              Text(TextStrings.confirmEmail,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Text('Email@email.ex'),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Text(TextStrings.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: AppSizes.spaceBtwSections,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(()=> SuccessScreen(
                onPressed: () => Get.to(() => const LoginScreen()),
                title: TextStrings.yourAccountCreatedTitle,
                subTitle: TextStrings.yourAccountCreatedSubTitle,
                image: ImageStrings.mailLogo,
              )) ,child: Text(TextStrings.tContinue),),),
              SizedBox(height: AppSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: Text(TextStrings.resendEmail),),),
            ],
          ),
        )
      ),
    );
  }
}
