import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/images/rounded_images.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MSizes.productImageRadius),
          color: dark ? MColors.darkerGrey : MColors.white),
      child: Row(
        children: [
          /// Thumbnail
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(MSizes.sm),
            backgroundColor: dark ? MColors.darkerGrey : MColors.lightContainer,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SizedBox(
                  height:120,
                  width: 120,
                  child: RoundedImage(
                    imageUrl: MImages.nikeShoes,
                    applyImageRadius: true,
                  ),
                ),

                /// sale Tag
                Positioned(
                  top: 8,
                  left: 3,
                  child: RoundedContainer(
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
                ),

                /// Favorite Icon Button
                const Positioned(
                    top: 0,
                    right: 3,
                    child: CircularIcon(
                      width: 40,
                      icon: Iconsax.heart5,
                      color: Colors.pink,
                    ))
              ],
            ),
          ),

          /// Details
           SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: MSizes.sm,left: MSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'White Nike',maxLines: 2,smallSize: true,),
                      SizedBox(height: MSizes.spaceBetweenItems/2,),
                      BrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                  const Spacer(),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: ProductPriceText(price: '75.0')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MSizes.cardRadiusMd),
                            bottomRight: Radius.circular(MSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: MSizes.iconLg * 1.2,
                          height: MSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: MColors.white,),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
