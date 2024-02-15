import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_with_backend/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Featured Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [

              /// Heading
              const SectionHeading(
                textHeading: 'Brands', showActionButton: false,),
              const SizedBox(height: MSizes.spaceBetweenItems,),

              /// Brands
              MGridLayout(itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => BrandCard(
                    showBorder: true,
                    onTap:()=>Get.to(()=>const BrandProducts()),))
            ],
          ),),
      ),
    );
  }
}
