import 'package:ecommerce_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../features/shop/screens/home/widgets/circular_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.onTap,
      this.trailing,
  });


  final String title,subTitle;
  final IconData icon;
  final Widget? trailing;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunctions.isDarkMode(context);
    return ListTile(
        leading: CircularImage(
          image: ImageStrings.mailLogo,
          width: 50,
          height: 50,
        ),
        title: Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color:isDark? AppColors.white : AppColors.dark),),
        subtitle: Text(subTitle,style: Theme.of(context).textTheme.bodyMedium!.apply(color:isDark? AppColors.white : AppColors.dark),),
        trailing: trailing,
      onTap: onTap,
    );
  }
}
