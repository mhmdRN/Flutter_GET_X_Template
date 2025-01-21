import 'package:ecommerce_store/features/authentication/screens/signup/forget_password.dart';
import 'package:ecommerce_store/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_store/utils/constants/colors.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 100, image: AssetImage(ImageStrings.appLogo)),
                  Text(
                    TextStrings.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: AppSizes.sm),
                  Text(
                    TextStrings.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              //Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      //Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TextStrings.email),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwInputFields,
                      ),
                      //password
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            suffixIcon: Icon(Iconsax.eye_slash),
                            labelText: TextStrings.password),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwInputFields / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (onChanged) {}),
                              const Text(TextStrings.rememberMe),
                            ],
                          ),
                          TextButton(
                              onPressed: () => Get.to(()=> ForgetPasswordScreen()),
                              child: const Text(TextStrings.forgetPassword))
                        ],
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text(TextStrings.signIn)),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => const SignUpScreen()),
                            child: const Text(TextStrings.createAccount)),
                      ),
                    ],
                  ),
                ),
              ),
              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: isDark ? AppColors.darkGrey : AppColors.black,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(TextStrings.orSignInWith.capitalize!),
                  Flexible(
                      child: Divider(
                    color: isDark ? AppColors.darkGrey : AppColors.black,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ))
                ],
              ),

              SizedBox(height: AppSizes.spaceBtwSections,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: AppSizes.mdIcon,
                        height: AppSizes.mdIcon,
                        image: AssetImage(ImageStrings.google),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.spaceBtwItems,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: AppSizes.mdIcon,
                        height: AppSizes.mdIcon,
                        image: AssetImage(ImageStrings.google),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
