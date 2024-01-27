import 'package:e_commerce_with_backend/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_with_backend/features/authentication/screens/sign_up/widgets/signup_form.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                MTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),

              /// Form
              const SignupForm(),
              const SizedBox(height: MSizes.spaceBetweenSections,),
              /// Divider
              const FormDivider(dividerText: MTexts.orSignInWith),
              const SizedBox(height: MSizes.spaceBetweenItems,),

              /// Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

