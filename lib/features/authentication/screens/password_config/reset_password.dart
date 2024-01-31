import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(MTexts.forgotPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: MSizes.spaceBetweenItems,),
            Text(MTexts.forgotPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: MSizes.spaceBetweenSections * 2,),


            /// Text Field

            /// Submit Button

          ],
        ),
      ),
    );
  }
}
