import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_with_backend/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const ProductImageSlider(),

            /// Product Details
            Padding(
                padding: const EdgeInsets.only(
                    right: MSizes.defaultSpace,
                    left: MSizes.defaultSpace,
                    bottom: MSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Rating & Share Button
                    const RatingAndShare(),

                    /// Price, title, stock & brand
                    const ProductMetaData(),

                    /// Attributes
                    const ProductAttributes(),
                    const SizedBox(height: MSizes.spaceBetweenSections,),

                    /// Checkout Button
                    SizedBox(
                      width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                    const SizedBox(height: MSizes.spaceBetweenSections,),

                    /// Description
                    const SectionHeading(textHeading: 'Description',showActionButton: false,),
                    const SizedBox(height: MSizes.spaceBetweenItems,),
                    const ReadMoreText('This is a product description for White Nike. There are more things that can be added but i am too lazy to do that',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show More',
                      trimExpandedText: 'Show Less',
                      moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),),

                    /// Reviews
                    const Divider(),
                    const SizedBox(height: MSizes.spaceBetweenItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SectionHeading(textHeading: 'Reviews(199)',showActionButton: false,),
                        IconButton(onPressed: ()=>Get.to(()=> const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                      ],
                    ),
                    const SizedBox(height: MSizes.spaceBetweenSections,),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}

