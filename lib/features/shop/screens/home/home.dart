import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  MAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MTexts.homeAppBarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: MColors.grey),
                        ),
                        Text(
                          MTexts.homeAppBarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: MColors.white),
                        )
                      ],
                    ),
                    actions: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Iconsax.shopping_bag,
                                color: MColors.white,
                              )),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: MColors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .apply(
                                          color: MColors.white,
                                          fontSizeFactor: 0.8),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
