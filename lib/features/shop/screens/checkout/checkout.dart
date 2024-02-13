import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: EdgeInsets.all(MSizes.defaultSpace),

        /// 
      ),
    );
  }
}
