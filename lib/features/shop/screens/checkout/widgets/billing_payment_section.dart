import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          textHeading: 'Payment Method',
          showActionButton: true,
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems / 2,
        ),
        Row(
          children: [
            RoundedContainer(
              width: 50,
              height: 40,
              backgroundColor: dark ? MColors.light : Colors.white,
              padding: const EdgeInsets.all(MSizes.xs),
              child: const Image(
                image: AssetImage(MImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: MSizes.spaceBetweenItems / 2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),

          ],
        )
      ],
    );
  }
}
