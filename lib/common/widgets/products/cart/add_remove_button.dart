import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MSizes.md,
          color: MHelperFunctions.isDarkMode(context)? MColors.white : MColors.black,
          backgroundColor: MHelperFunctions.isDarkMode(context)? MColors.darkerGrey : MColors.light,
        ),
        const SizedBox(
          width: MSizes.spaceBetweenItems,
        ),
        Text('2',style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(
          width: MSizes.spaceBetweenItems,
        ),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MSizes.md,
          color: MColors.white ,
          backgroundColor: MColors.primary.withOpacity(1),
        ),
      ],
    );
  }
}
