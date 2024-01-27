import 'package:e_commerce_with_backend/common/styles/spacing_styles.dart';
import 'package:e_commerce_with_backend/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_with_backend/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_with_backend/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title and subtitle
              const LoginHeader(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: MTexts.orSignInWith.capitalize!),
              const SizedBox(height: MSizes.spaceBetweenItems,),

              ///Footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}




