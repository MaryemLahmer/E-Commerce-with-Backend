import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_with_backend/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import 'new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MColors.primary,
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
      child: const Icon(Iconsax.add,color: MColors.white,),),
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true,),
              SingleAddress(selectedAddress: false,),
            ],
          ),
        ),
      ),
    );
  }
}
