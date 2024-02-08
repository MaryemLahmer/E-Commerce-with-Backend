import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_with_backend/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_with_backend/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_with_backend/features/shop/screens/home/home.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(children: [MGridLayout(itemCount: 6, itemBuilder: (_,index)=>const ProductCardVertical())],),
        ),
      ),
    );
  }
}
