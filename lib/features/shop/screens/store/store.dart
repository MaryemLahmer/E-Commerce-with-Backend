import 'package:e_commerce_with_backend/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_with_backend/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_with_backend/common/widgets/products/cart/cart_menu_item.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/features/shop/screens/brand/all_brands.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import 'category_tab/category_tab.dart';

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
                          onPressed: () => Get.to(()=> const AllBrands()),
                        ),
                        const SizedBox(
                          height: MSizes.spaceBetweenItems / 1.5,
                        ),

                        MGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const BrandCard(
                                showBorder: false,
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
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ]))
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
