import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/shop/screens/home/widgets/circular_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';


class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
     this.title = "test",
     this.subTitle = "test",
     this.image = "test",
    this.onPressed,
  });

  final String title,subTitle;
  final String image;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircularImage(
          image: ImageStrings.mailLogo,
          width: 50,
          height: 50,
        ),
        title: Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color:AppColors.white),),
        subtitle: Text(subTitle,style: Theme.of(context).textTheme.bodyMedium!.apply(color:AppColors.white),),
        trailing: IconButton(onPressed: onPressed,icon: Icon(Iconsax.edit,color:AppColors.white))
    );
  }
}