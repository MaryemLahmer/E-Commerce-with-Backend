import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key, this.showAddRemoveButton=true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(
        height: MSizes.spaceBetweenSections,
      ),
      itemBuilder: (_, index) =>  Column(
        children: [
          /// Cart Item
          const CartItem(),
          if (showAddRemoveButton)const SizedBox(
            height: MSizes.spaceBetweenItems,
          ),

          /// Add Remove Button row with total Price
          if(showAddRemoveButton)
          const Row(
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

              /// Product Total Price
              ProductPriceText(price: '288'),
            ],
          )
        ],
      ),
    );
  }
}
