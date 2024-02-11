import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/images/circular_image.dart';
import 'package:e_commerce_with_backend/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/image_strings.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircularImage(image: MImages.user1),
                const SizedBox(
                  width: MSizes.spaceBetweenItems,
                ),
                Text(
                  'Jane Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems,
        ),

        /// Review
        Row(
          children: [
            const MRatingBarIndicator(rating: 4),
            const SizedBox(
              width: MSizes.spaceBetweenItems,
            ),
            Text(
              '14 Feb, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBetweenItems,
        ),

        /// Description
        const ReadMoreText(
          'The User interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Excellent',
          trimExpandedText: ' Show Less',
          trimCollapsedText: '  Show More',
          trimMode: TrimMode.Line,
          trimLines: 2,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
        ),

        const SizedBox(
          height: MSizes.spaceBetweenItems,
        ),

        /// Company Review
        RoundedContainer(
          backgroundColor: dark ? MColors.darkerGrey : MColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Store Reply',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '14 Feb, 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: MSizes.spaceBetweenItems,
                ),

                const ReadMoreText(
                  'We thank you for your feedback. We work hard to give you the best experience. Your convenience is our priority',
                  trimExpandedText: ' Show Less',
                  trimCollapsedText: '  Show More',
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MColors.primary),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(
          height: MSizes.spaceBetweenSections,
        ),

      ],
    );
  }
}
