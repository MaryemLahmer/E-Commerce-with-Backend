import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_with_backend/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_with_backend/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_with_backend/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_with_backend/navigation_menu.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../cart/widgets/cart_items.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in cart
              const CartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),

              /// Coupon Tex tField
              const CouponCode(),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),

              /// Billing Section
              RoundedContainer(
                padding: const EdgeInsets.all(MSizes.md),
                showBorder: true,
                backgroundColor: dark ? MColors.black : MColors.white,
                child: const Column(children: [
                  /// Pricing
                  BillingAmountsection(),
                  SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),

                  /// Divider
                  Divider(),
                  SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),

                  /// Payment Method
                  BillingPaymentSection(),
                  SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),

                  /// Address
                  BillingAddressSection(),
                  SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),
                ]),
              )
            ],
          ),

          ///
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: MImages.onboardingImage3,
              title: 'Payment Success',
              subTitle: 'Your Items will be shipped Soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()))),
          child: const Text('Checkout: \$288.0'),
        ),
      ),
    );
  }
}
