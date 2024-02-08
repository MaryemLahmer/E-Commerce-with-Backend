
import 'package:e_commerce_with_backend/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_with_backend/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
      Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            const BrandShowCse(
              images: [
                MImages.productImage3,
                MImages.productImage2,
                MImages.productImage1
              ],
            ),
            const SizedBox(
              height: MSizes.spaceBetweenItems,
            ),

            /// Products
            SectionHeading(
              textHeading: 'You might like',
              showActionButton: true,
              onPressed: () {},
            ),
            const SizedBox(
              height: MSizes.spaceBetweenItems,
            ),

            MGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical())
          ],
        ),
      ),
    ]);
  }
}
