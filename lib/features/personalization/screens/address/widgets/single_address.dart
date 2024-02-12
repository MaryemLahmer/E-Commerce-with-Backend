import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(MSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? MColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? MColors.darkerGrey
              : MColors.grey,
      margin: const EdgeInsets.only(bottom: MSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 4,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                  ? MColors.light
                  : MColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marie Antoinette',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: MSizes.sm/2,),
              const Text('(+216) 22 218 624',maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: MSizes.sm/2,),
              const Text('28 Saint Clement Bardo, tunis',softWrap: true,),

            ],
          )
        ],
      ),
    );
  }
}
