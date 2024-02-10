import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/Choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [

        /// Selected Attributes Pricing & description
        RoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          backgroundColor: dark ? MColors.darkerGrey : MColors.grey,
          child: Column(
            children: [

              /// Title, price & Stock Status
              Row(
                children: [
                  const SectionHeading(
                    textHeading: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: MSizes.spaceBetweenItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: MSizes.spaceBetweenItems,
                          ),

                          /// Sale Price
                          const ProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleMedium,
                          )
                        ],
                      ),

                    ],
                  )
                ],
              ),

              /// Variation Description
              const ProductTitleText(
                title:
                'This is the description of the product and it can go up to 4 lines.',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: MSizes.spaceBetweenSections,),

        /// Attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            const SectionHeading(textHeading: 'Colors',showActionButton: false,),
            const SizedBox(height: MSizes.spaceBetweenItems/2,),
            Wrap(
              spacing: 8,
              children: [
                MChoiceChip(text: 'Green',selected: false, onSelected: (value){},),
                MChoiceChip(text: 'Blue',selected: false,onSelected: (value){}),
                MChoiceChip(text: 'Black',selected: false,onSelected: (value){}),
                MChoiceChip(text: 'Red',selected: false,onSelected: (value){}),
                MChoiceChip(text: 'White',selected: true,onSelected: (value){}),
              ],
            )
          ],
        ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(textHeading: 'Size',showActionButton: false,),
            const SizedBox(height: MSizes.spaceBetweenItems/2,),
           Wrap(
             spacing: 4,
             children: [ MChoiceChip(text: 'EU 34',selected: true,onSelected: (value){}),
             MChoiceChip(text: 'EU 36',selected: false,onSelected: (value){}),
             MChoiceChip(text: 'EU 38',selected: false,onSelected: (value){}),
             ],)
          ],
        ),

      ],
    );
  }
}

