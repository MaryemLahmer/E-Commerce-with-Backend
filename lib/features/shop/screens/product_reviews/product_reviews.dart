import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Appbar
      appBar: MAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  "Ratings and Reviews are verified and are from people who use the same type of device that you do"),
              SizedBox(
                height: MSizes.spaceBetweenItems,
              ),

              /// Overall Product rating
              OverallProductRating()
            ],
          ),
        ),
      ),
    );
  }
}


