import 'package:e_commerce_with_backend/common/widgets/images/circular_image.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_with_backend/utils/constants/enums.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale tage
            RoundedContainer(
              radius: MSizes.sm,
              backgroundColor: MColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: MSizes.sm, vertical: MSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MColors.black),
              ),
            ),
            const SizedBox(
              width: MSizes.spaceBetweenItems,
            ),

            /// Price
            Text(
              '\$100',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: MSizes.spaceBetweenItems,
            ),
            const ProductPriceText(price: '75', isLarge: true)
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems / 1.5,
        ),

        /// Title
        const Row(
          children: [
            ProductTitleText(title: 'White Nike',textAlign: TextAlign.left,),
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems / 1.5,
        ),

        /// Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status: '),
            const SizedBox(
              width: MSizes.spaceBetweenItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems / 1.5,
        ),

        /// Brand
          Row(children: [
          CircularImage(image: MImages.shoeIcon,
          width: 32,
          height: 32,
          overlayColor: dark?MColors.white:MColors.black,),
          const BrandTitleWithVerifiedIcon(title: 'Nike',brandTextSizes: TextSizes.medium,),
        ],)
      ],
    );
  }
}
