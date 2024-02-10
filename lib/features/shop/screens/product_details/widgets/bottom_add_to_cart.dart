import 'package:e_commerce_with_backend/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MSizes.defaultSpace, vertical: MSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? MColors.darkerGrey : MColors.light,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(MSizes.cardRadiusLg),
            topLeft: Radius.circular(MSizes.cardRadiusLg)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: MColors.darkGrey,
                width: 40,
                height: 40,
                color: MColors.white,
              ),
              const SizedBox(
                width: MSizes.spaceBetweenItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: MSizes.spaceBetweenItems,
              ),
              const CircularIcon(
                icon: Iconsax.add,
                backgroundColor: MColors.black,
                width: 40,
                height: 40,
                color: MColors.white,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(MSizes.md),
              backgroundColor: MColors.black,
              side: const BorderSide(color: MColors.black)
            ),
              onPressed: () {}, child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
