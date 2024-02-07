import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_with_backend/common/widgets/products/cart/cart_menu_item.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/image_strings.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          CartCounterItem(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: MHelperFunctions.isDarkMode(context)
                  ? MColors.black
                  : MColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(MSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Bar
                    const SizedBox(
                      height: MSizes.spaceBetweenItems,
                    ),
                    const SearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: MSizes.spaceBetweenSections,
                    ),

                    /// Featured Brands
                    SectionHeading(
                      textHeading: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: MSizes.spaceBetweenItems / 1.5,
                    ),

                    const RoundedContainer(
                      padding: EdgeInsets.all(MSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          /// Icon
                          CircularImage(image: MImages.clothIcon,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}

