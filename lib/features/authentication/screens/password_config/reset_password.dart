import 'package:e_commerce_with_backend/utils/constants/image_strings.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
          children: [
            
            /// Image with 60% of screen width
            Image(
                image: const AssetImage(MImages.deliveredEmailIllustration),
                width: MHelperFunctions.screenWidth() * 0.6),
            const SizedBox(
              height: MSizes.spaceBetweenSections,
            ),
            /// Title and Subtitle
            Text(
              MTexts.changePasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: MSizes.spaceBetweenItems,
            ),
            const SizedBox(
              height: MSizes.spaceBetweenItems,
            ),
            Text(
              MTexts.changePasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: MSizes.spaceBetweenSections,
            ),
            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){}, child: const Text(MTexts.done)),
            ),
          ],
          ),
        ),
      ),
    );
  }
}
