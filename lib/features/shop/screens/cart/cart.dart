import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/images/rounded_images.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
              itemBuilder: (_, index) => Column(
                children: [
                  Row(
                    children: [
                      RoundedImage(
                        imageUrl: MImages.productImage5,
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(MSizes.sm),
                        backgroundColor: MHelperFunctions.isDarkMode(context) ? MColors.darkerGrey:MColors.light,
                      ),
                      const SizedBox(width: MSizes.spaceBetweenItems,)
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
