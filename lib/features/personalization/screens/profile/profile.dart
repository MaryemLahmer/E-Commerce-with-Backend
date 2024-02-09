import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/images/circular_image.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: const MAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: Column(children: [
          /// Profile Picture
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const CircularImage(
                  image: MImages.user,
                  width: 90,
                  height: 90,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture')),
              ],
            ),
          ),

          /// Details
          const SizedBox(
            height: MSizes.spaceBetweenItems / 2,
          ),
          const Divider(),
          const SizedBox(height: MSizes.spaceBetweenItems),

          /// Heading Profile Info
          const SectionHeading(
            textHeading: 'Profile Information',
            showActionButton: false,
          ),
          const SizedBox(height: MSizes.spaceBetweenItems),
          ProfileMenu(onPressed: () {}, title: 'Name',value: 'Marie Antoinette',),

          const SizedBox(height: MSizes.spaceBetweenItems,),
          const Divider(),
          const SizedBox(height: MSizes.spaceBetweenSections,),

          /// Heading Personal Info
          const SectionHeading(textHeading: 'Personal Information',showActionButton: false,),
          const SizedBox(height: MSizes.spaceBetweenItems,),

          ProfileMenu(onPressed: (){}, title: 'User ID',icon: Iconsax.copy, value: '12340'),
          ProfileMenu(onPressed: (){}, title: 'E-Mail', value: 'Marie28@gmail.com'),
          ProfileMenu(onPressed: (){}, title: 'Phone Number', value: '12345678'),
          ProfileMenu(onPressed: (){}, title: 'Gender', value: 'Female'),
          ProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '28/04/01'),
          const Divider(),
          const SizedBox(height: MSizes.spaceBetweenItems,),

          Center(
            child: TextButton(
              onPressed: (){},
              child: const Text('Delete Account', style: TextStyle(color: Colors.red),),
            ),
          )
        ]),
      ),
    );
  }
}

