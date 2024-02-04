import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

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
            )
          ],
        ),
      ),
    );
  }
}


