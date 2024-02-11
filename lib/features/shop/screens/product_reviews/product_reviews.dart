import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: const MAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and Reviews are verified and are from people who use the same type of device that you do"),
              const SizedBox(
                height: MSizes.spaceBetweenItems,
              ),

              /// Overall Product rating
              const OverallProductRating(),
              const SizedBox(height: MSizes.spaceBetweenItems/2.5,),
              const MRatingBarIndicator(rating: 4.8,),
              Text("12,628",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: MSizes.spaceBetweenSections,),
            ],
          ),
        ),
      ),
    );
  }
}

