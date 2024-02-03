import 'package:e_commerce_with_backend/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:e_commerce_with_backend/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           /// PrimaryHeaderContainer(
             /// child: Column(
               /// children: [
                  /// -- AppBar
                  const HomeAppBar(),
                  const SizedBox(height: MSizes.spaceBetweenSections,),

                  /// -- SearchBar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: MSizes.defaultSpace),
                    child: Container(
                      width: MDeviceUtils.getScreenWidth(context),
                      padding: const EdgeInsets.all(MSizes.md),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(MSizes.cardRadiusLg),
                        border: Border.all(color: MColors.grey)
                      ),
                    ),
                  )


                  /// -- Categories
                ],
              ),
            )
    ///      ],
  ///      ),
     /// ),
    );
  }
}


