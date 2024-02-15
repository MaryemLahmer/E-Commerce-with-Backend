import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/texts/section_heading.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          textHeading: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Saint Clement, Bardo 2000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems/2,
        ),

        /// Phone Number
        const Row(
          children: [
            Icon(
              Icons.phone,
              color: MColors.dark,
              size: 16,
            ),
            SizedBox(
              width: MSizes.spaceBetweenItems,
            ),
            Text('(+216) 22 218 624'),
          ],
        ),

        const SizedBox(
          height: MSizes.spaceBetweenItems/2,
        ),

        /// Location
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: MColors.dark,
              size: 16,
            ),
            const SizedBox(
              width: MSizes.spaceBetweenItems,
            ),
            Expanded(
                child: Text(
              'Tunis, Tunisia',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )),
          ],
        )
      ],
    );
  }
}
