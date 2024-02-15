import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: MSizes.spaceBetweenItems,),
      itemBuilder:(_,index)=> RoundedContainer(
        padding: const EdgeInsets.all(MSizes.md),
        showBorder: true,
        backgroundColor: dark ? MColors.dark : MColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: MSizes.spaceBetweenItems / 2,
                ),

                /// Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: MColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '14 February 2024',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall,
                      ),
                    ],
                  ),
                ),

                /// Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: MSizes.iconSm,))
              ],
            ),
            const SizedBox(height:MSizes.spaceBetweenItems),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: MSizes.spaceBetweenItems / 2,
                      ),

                      /// Status & Date
                      Expanded(
                        child: Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: MColors.primary, fontWeightDelta: 1),
                              ),
                              Text(
                                '[#2865a]',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: MSizes.spaceBetweenItems / 2,
                      ),

                      /// Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: MColors.primary, fontWeightDelta: 1),
                            ),
                            Text(
                              'Feb 28th, 2024',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
