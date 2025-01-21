import 'package:ecommerce_store/features/authentication/screens/signup/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpacing),
        child: Column(
          children: [
            Text(TextStrings.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            SizedBox(height: AppSizes.spaceBtwItems,),
            Text(TextStrings.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            SizedBox(height: AppSizes.spaceBtwSections * 2,),

            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TextStrings.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => ResetPasswordScreen()),
                    child: Text(TextStrings.submit)),
            ),

          ],
        ),
      ),
    );
  }
}
