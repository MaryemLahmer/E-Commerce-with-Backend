import 'package:e_commerce_with_backend/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_with_backend/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/appbar/appbar.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const MAppBar(showBackArrow: true, title: Text('Popular Products')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              DropdownButtonFormField(
                onChanged: (value) {},
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
                      .map((option) => DropdownMenuItem(value:option, child: Text(option)))
                      .toList(),
                 ),
              const SizedBox(height: MSizes.spaceBetweenSections,),

              /// Products
              MGridLayout(itemCount: 3, itemBuilder: (_,index)=>const ProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
