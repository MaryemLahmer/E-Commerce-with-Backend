import 'package:e_commerce_with_backend/common/styles/shadows.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/images/rounded_images.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../icons/circular_icon.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';
import '../../texts/product_price_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: ()=> Get.to (()=> const ProductDetail() ),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(MSizes.productImageRadius),
            color: dark ? MColors.darkerGrey : MColors.white),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button and Discount Tag
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MSizes.sm),
              backgroundColor: dark ? MColors.dark : MColors.light,
              child: Stack(
                children: [
                  /// thumbnail image
                  const RoundedImage(
                    imageUrl: MImages.nikeShoes,
                    applyImageRadius: true,
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
            const SizedBox(
              height: MSizes.spaceBetweenItems / 2,
            ),

            /// --- Details
            const Padding(
              padding: EdgeInsets.only(left: MSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'White Nike Air Shoes',
                  ),
                  SizedBox(
                    height: MSizes.spaceBetweenItems / 2,
                  ),
                  BrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            /// Adding Spacer here to keep the height of each box same in case 1 or 2 lines of heading
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: MSizes.sm),
                  child: ProductPriceText(
                    price: '75',
                  ),
                ),

                /// Add to cart button
                Container(
                  decoration: const BoxDecoration(
                      color: MColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(MSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(MSizes.productImageRadius))),
                  child: const SizedBox(
                    width: MSizes.iconLg * 1.2,
                    height: MSizes.iconLg * 0.9,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: MColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



