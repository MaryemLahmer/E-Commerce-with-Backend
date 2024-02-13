import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_images.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        RoundedImage(
          imageUrl: MImages.productImage5,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(MSizes.sm),
          backgroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkerGrey
              : MColors.light,
        ),
        const SizedBox(
          width: MSizes.spaceBetweenItems,
        ),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: ProductTitleText(
                  title: 'Green Hoodie',
                  maxLines: 2,
                ),
              ),

              /// Attributes
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge), TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'UK 08',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
