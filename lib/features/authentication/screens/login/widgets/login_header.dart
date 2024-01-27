import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 130,
            image: AssetImage(
                isDark ? MImages.lightAppLogo : MImages.darkAppLogo)),
        const SizedBox(
          height: MSizes.sm,
        ),
        Text(
          MTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: MSizes.sm,
        ),
        Text(
          MTexts.loginSubtitle,
          style: Theme.of(context).textTheme.headlineSmall,
        )
      ],
    );
  }
}
