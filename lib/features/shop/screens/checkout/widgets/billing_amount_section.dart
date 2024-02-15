import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountsection extends StatelessWidget {
  const BillingAmountsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Subtotal
        Row(
          children: [
            Expanded(child: Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium,)),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
        const SizedBox(height: MSizes.spaceBetweenItems / 2,),

        /// Shipping Fee
        Row(
          children: [
            Expanded(child: Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,)),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge,),

          ],
        ),

        const SizedBox(height: MSizes.spaceBetweenItems / 2,),

        /// Order Total
        Row(
          children: [
            Expanded(child: Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,)),
            Text('\$6.0',style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),

      ],
    );
  }
}
