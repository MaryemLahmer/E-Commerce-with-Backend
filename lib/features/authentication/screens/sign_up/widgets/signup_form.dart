import 'package:e_commerce_with_backend/features/authentication/screens/sign_up/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MTexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(
                  width: MSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: MSizes.spaceBtwInputFields,
            ),

            /// Username
            TextFormField(
              decoration: const InputDecoration(
                  labelText: MTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: MSizes.spaceBtwInputFields,
            ),

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: MTexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: MSizes.spaceBtwInputFields,
            ),

            /// Phone Number
            TextFormField(
              decoration: const InputDecoration(
                  labelText: MTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: MSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: MTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: MSizes.spaceBetweenSections,
            ),

            /// Terms and Conditions
            const TermsAndConditionsCheckBox(),
            const SizedBox(
              height: MSizes.spaceBetweenSections,
            ),

            /// Sign Up Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(MTexts.createAccount)))
          ],
        ));
  }
}

