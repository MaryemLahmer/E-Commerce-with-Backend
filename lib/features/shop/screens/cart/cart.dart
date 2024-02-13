import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_with_backend/common/widgets/images/rounded_images.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/image_strings.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(MSizes.defaultSpace),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 4,
              separatorBuilder: (_, __) => const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),
              itemBuilder: (_, index) =>  Column(
                children: [
                  const CartItem(),
                  const SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 70,),
                      /// Add Remove Buttons
                      const ProductQuantityWithAddRemove(),
                      const SizedBox(
                        width: MSizes.spaceBetweenItems,
                      ),
                      Text('2',style: Theme.of(context).textTheme.titleSmall),
                      const SizedBox(
                        width: MSizes.spaceBetweenItems,
                      ),
                      CircularIcon(
                        icon: Iconsax.add,
                        width: 32,
                        height: 32,
                        size: MSizes.md,
                        color: MColors.white ,
                        backgroundColor: MColors.primary.withOpacity(1),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

