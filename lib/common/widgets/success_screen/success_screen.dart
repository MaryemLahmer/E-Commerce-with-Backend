import 'package:e_commerce_with_backend/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                  image: AssetImage(image),
                  width: MHelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),

              /// Title and Subtitle
              Text(
                title,
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
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),
              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text(MTexts.tContinue)),
              ),
            ],
          )
          ,),
      ),
    );
  }
}