import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

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
      body: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 8,
            separatorBuilder: (_, __) => const SizedBox(
              height: MSizes.spaceBetweenSections,
            ),
            itemBuilder: (_, index) => const Column(
              children: [
                CartItem(),
                SizedBox(
                  height: MSizes.spaceBetweenItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        /// Extra Space
                        SizedBox(
                          width: 70,
                        ),

                        /// Add Remove Button
                        ProductQuantityWithAddRemove(),
                      ],
                    ),
                    ProductPriceText(price: '288'),
                  ],
                )
              ],
            ),
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: const Text('Checkout: \$288.0'),),
      ),
    );
  }
}
