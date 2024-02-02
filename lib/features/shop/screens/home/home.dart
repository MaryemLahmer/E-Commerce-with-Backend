import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: MColors.primary,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 320,
                child: Stack(
                  children: [
                    Positioned(
                      top: -150,
                      right: -250,
                      child: CircularContainer(
                        backgroundColor: MColors.textWhite.withOpacity(0.1),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: -300,
                      child: CircularContainer(
                        backgroundColor: MColors.textWhite.withOpacity(0.1),
                      ),
                    ),
                    ///Column()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
