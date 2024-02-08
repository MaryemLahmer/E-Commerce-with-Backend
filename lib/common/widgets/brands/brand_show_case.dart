import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';


class BrandShowCse extends StatelessWidget {
  const BrandShowCse({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(MSizes.md),
      borderColor: MColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MSizes.spaceBetweenItems),
      child: Column(
        children: [

          /// Brand with Product Count
          const BrandCard(showBorder: false),

          /// Brand top 3 Product Images
          Row(
            children: images.map((image) =>
                brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: RoundedContainer(
          height: 90,
          padding: const EdgeInsets.all(MSizes.xs),
          margin: const EdgeInsets.only(right: MSizes.sm),
          backgroundColor: MHelperFunctions.isDarkMode(context) ? MColors
              .darkerGrey : MColors.light,
          child: Image(image: AssetImage(image),),
        )
    );
  }
}