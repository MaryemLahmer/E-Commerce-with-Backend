import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: MSizes.sm,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${MTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MTexts.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                color: dark ? MColors.white : MColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? MColors.white : MColors.primary,
              )),
          TextSpan(
              text: ' and ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MTexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                color: dark ? MColors.white : MColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? MColors.white : MColors.primary,
              ))
        ]))
      ],
    );
  }
}
