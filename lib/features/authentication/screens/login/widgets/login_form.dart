import 'package:e_commerce_with_backend/features/authentication/screens/password_config/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../sign_up/widgets/signup.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: MSizes.spaceBetweenSections),
          child: Column(
            children: [
              ///Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: MTexts.email),
              ),
              const SizedBox(height: MSizes.spaceBtwInputFields),

              //Password
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: MTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
              const SizedBox(height: MSizes.spaceBtwInputFields / 2),

              /// Remember Me and Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember Me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(MTexts.rememberMe),
                    ],
                  ),

                  /// Forgot Password
                  TextButton(
                      onPressed: () => Get.to(()=> const ForgotPassword()),
                      child: const Text(MTexts.forgotPassword)),
                ],
              ),
              const SizedBox(
                height: MSizes.spaceBetweenSections,
              ),

              /// Sign in button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(()=> const NavigationMenu()), child: const Text(MTexts.signIn)),
              ),
              const SizedBox(
                height: MSizes.spaceBetweenItems,
              ),

              /// Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const SignUpScreen(),),
                    child: const Text(MTexts.createAccount)),
              ),
            ],
          ),
        ));
  }
}
