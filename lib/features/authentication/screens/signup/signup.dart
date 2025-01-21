import 'package:ecommerce_store/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_store/utils/constants/text_strings.dart';
import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpacing),
            child: Column(
              children: [
                Text(
                  TextStrings.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                Form(
                    child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TextStrings.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TextStrings.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TextStrings.username,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TextStrings.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TextStrings.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  TextFormField(
                    expands: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: TextStrings.password,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {},
                          )),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '${TextStrings.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${TextStrings.privacyPolicy} ',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: isDark
                                          ? AppColors.white
                                          : AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: isDark
                                          ? AppColors.white
                                          : AppColors.primary,
                                    )),
                        TextSpan(
                            text: '${TextStrings.and} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${TextStrings.termsOfUse} ',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: isDark
                                          ? AppColors.white
                                          : AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: isDark
                                          ? AppColors.white
                                          : AppColors.primary,
                                    )),
                      ]))
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const VerifyEmailScreen()),
                        child: const Text(TextStrings.createAccount),
                      ))
                ]))
              ],
            ),
          ),
        ));
  }
}
