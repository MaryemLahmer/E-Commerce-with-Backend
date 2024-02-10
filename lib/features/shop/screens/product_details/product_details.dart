import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            ProductImageSlider(),

            /// Product Details
            Padding(
                padding: EdgeInsets.only(
                    right: MSizes.defaultSpace,
                    left: MSizes.defaultSpace,
                    bottom: MSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Rating & Share Button
                    RatingAndShare(),

                    /// Price, title, stock & brand
                    ProductMetaData(),

                    /// Attribute
                    /// Checkout Button
                    /// Description
                    /// Reviews
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

