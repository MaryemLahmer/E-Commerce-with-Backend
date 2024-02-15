import 'package:e_commerce_with_backend/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_with_backend/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_with_backend/features/personalization/screens/address/address.dart';
import 'package:e_commerce_with_backend/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce_with_backend/features/shop/screens/order/order.dart';
import 'package:e_commerce_with_backend/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
                child: Column(
              children: [
                /// AppBar
                MAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: MColors.white),
                  ),
                ),

                /// User Profile Card
                UserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: MSizes.spaceBetweenSections,
                ),
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(MSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Setting
                  const SectionHeading(
                    textHeading: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),
                  SettingsMenuTile(
                    title: 'My Addresses',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.safe_home,
                    onTap: ()=>Get.to(()=>const UserAddressScreen()),
                  ),
                  SettingsMenuTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    title: 'My Orders',
                    subtitle: 'In Progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                    onTap: () => Get.to(()=> const OrderScreen()),
                  ),
                  SettingsMenuTile(
                    title: 'Bank Account',
                    subtitle: 'Withdraw Balance to registered bank account',
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted Coupons',
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    title: 'Account Privacy',
                    subtitle: 'Manage Data Usage and Connected Account',
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  /// App Settings
                  const SizedBox(
                    height: MSizes.spaceBetweenSections,
                  ),
                  const SectionHeading(
                    textHeading: 'App Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: MSizes.spaceBetweenItems,
                  ),
                  const SettingsMenuTile(
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase',
                      icon: Iconsax.document_upload),
                  SettingsMenuTile(
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      icon: Iconsax.location),
                  SettingsMenuTile(
                    title: 'Safe Mode',
                    subtitle: 'Search Result in Safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(onChanged: (value) {}, value: false),
                  ),
                  SettingsMenuTile(
                    title: 'HD Image Quality',
                    subtitle: 'Set Image Quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  /// Logout Button
                  const SizedBox(height: MSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(
                    height: MSizes.spaceBetweenSections * 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
