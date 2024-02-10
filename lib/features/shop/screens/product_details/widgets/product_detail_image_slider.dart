import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: dark ? MColors.darkerGrey : MColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.only(bottom: MSizes.lg * 1.5),
                  child: Center(
                      child: Image(image: AssetImage(MImages.nikeShoes))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MSizes.defaultSpace / 2.5,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    imageUrl: MImages.nikeShoes,
                    backgroundColor: dark ? MColors.dark : MColors.white,
                    border: Border.all(color: MColors.primary),
                    padding: const EdgeInsets.all(MSizes.xs / 2),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: MSizes.spaceBetweenItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),

            /// AppBar
            const MAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
