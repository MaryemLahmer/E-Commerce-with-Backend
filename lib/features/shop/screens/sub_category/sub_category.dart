import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/images/rounded_images.dart';
import 'package:e_commerce_with_backend/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_strings.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Sports Wear',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const RoundedImage(
                width: double.infinity,
                imageUrl: MImages.promoBanner2,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),

              /// Sub Categories
              Column(
                children: [
                  /// Header
                  SectionHeading(
                    textHeading: 'Sport Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: MSizes.spaceBetweenItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              width: MSizes.spaceBetweenItems /2,
                            ),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const ProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
