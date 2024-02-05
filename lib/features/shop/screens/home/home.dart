import 'package:e_commerce_with_backend/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  HomeAppBar(),
                  SizedBox(
                    height: MSizes.spaceBetweenSections,
                  ),

                  /// -- SearchBar
                  SearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: MSizes.spaceBetweenSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(children: [
                      SectionHeading(
                        textHeading: 'Popular Categories',
                        textColor: Colors.white,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),
                  HomeCategories()
                ],
              ),
            ),

            /// Body
            Padding(
                padding: EdgeInsets.all(MSizes.defaultSpace),
                child: Column(
                  children: [
                    /// -- Promo Slider
                    PromoSlider(
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

                    /// -- Popular Products
                    ProductCardVertical(),
                    SizedBox(height: MSizes.spaceBetweenSections,),

                  ],
                ))
          ],
        ),
      ),
    );
  }
}
