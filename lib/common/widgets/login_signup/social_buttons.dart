import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: MSizes.iconMd,
                  height: MSizes.iconMd,
                  image: AssetImage(MImages.google))),
        ),
        const SizedBox(width: MSizes.spaceBetweenItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: MSizes.iconMd,
                  height: MSizes.iconMd,
                  image: AssetImage(MImages.facebook))),
        ),
        const SizedBox(width: MSizes.spaceBetweenItems,),
      ],
    );
  }
}
