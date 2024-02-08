import 'package:e_commerce_with_backend/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_with_backend/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_with_backend/common/widgets/products/cart/cart_menu_item.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/enums.dart';
import 'package:e_commerce_with_backend/utils/constants/image_strings.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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

                        MGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: RoundedContainer(
                                  padding: const EdgeInsets.all(MSizes.xs),
                                  showBorder: false,
                                  backgroundColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      /// Icon
                                      Flexible(
                                        /// flexible only takes the needed space for the child
                                        child: CircularImage(
                                          image: MImages.clothIcon,
                                          overlayColor:
                                              MHelperFunctions.isDarkMode(
                                                      context)
                                                  ? MColors.white
                                                  : MColors.black,
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: MSizes.spaceBetweenItems / 2,
                                      ),

                                      /// Text
                                      Expanded(
                                        /// expanded takes up the maximum space given
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const BrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSizes: TextSizes.large,
                                            ),
                                            Text(
                                              '256 products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),

                  /// Tabs
                  bottom: const MTabBar(tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics'),),
                    Tab(child: Text('Clothes'),),
                    Tab(child: Text('Cosmetics'),),
                  ]))
            ];
          },
          body: ,
        ),
      ),
    );
  }
}
