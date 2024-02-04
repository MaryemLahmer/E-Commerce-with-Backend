import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MColors.white,
    this.backgroundColor = MColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MSizes.spaceBetweenItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(MSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (MHelperFunctions.isDarkMode(context)
                        ? MColors.black
                        : MColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: MHelperFunctions.isDarkMode(context)
                      ? MColors.light
                      : MColors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(
              height: MSizes.spaceBetweenItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
