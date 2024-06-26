import 'package:e_commerce_with_backend/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_with_backend/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  const HomeAppBar(),
                  const SizedBox(
                    height: MSizes.spaceBetweenSections,
                  ),

                  /// -- SearchBar
                  const SearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(
                    height: MSizes.spaceBetweenSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: const EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(children: [
                      SectionHeading(
                        textHeading: 'Popular Categories',
                        textColor: Colors.white,
                        showActionButton: true,
                        onPressed: ()=>Get.to(()=>const AllProducts()),
                      ),
                      const SizedBox(
                        height: MSizes.spaceBetweenItems,
                      ),
                      const HomeCategories()
                    ]),
                  ),
                  const SizedBox(height: MSizes.spaceBetweenSections,)
                ],
              ),
            ),

            /// Body
            Padding(
                padding: const EdgeInsets.all(MSizes.defaultSpace),
                child: Column(
                  children: [
                    /// -- Promo Slider
                    const PromoSlider(
                      banners: [
                        MImages.promoBanner1,
                        MImages.promoBanner2,
                        MImages.promoBanner3,
                        MImages.promoBanner4,
                        MImages.promoBanner5,
                        MImages.promoBanner6,
                        MImages.promoBanner7,
                      ],
                    ),
                    const SizedBox(
                      height: MSizes.spaceBetweenSections,
                    ),

                    /// Heading
                    SectionHeading(
                      textHeading: 'Popular Products',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: MSizes.spaceBetweenItems,
                    ),

                    /// -- Popular Products
                    MGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const ProductCardVertical(),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
