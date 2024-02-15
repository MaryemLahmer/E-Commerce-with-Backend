import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? MColors.dark : MColors.white,
      padding: const EdgeInsets.only(
          top: MSizes.sm,
          bottom: MSizes.sm,
          right: MSizes.sm,
          left: MSizes.md),
      child: Row(
        children: [
          /// Text Field
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a Promo Code ? Enter Here',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 70,
              child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark ? MColors.white.withOpacity(0.5) : MColors.dark.withOpacity(0.5),
                    backgroundColor: MColors.grey.withOpacity(0.5),
                    side: BorderSide(color: MColors.grey.withOpacity(0.1))
                ),
                child: const Text('Apply'),))
        ],
      ),
    );
  }
}
