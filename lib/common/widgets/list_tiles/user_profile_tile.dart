import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';
class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed,
  });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: MImages.user,
        width: 60,
        height: 60,
        padding: 0,
      ),
      title: Text(
        'Marie Antoinette',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MColors.white),
      ),
      subtitle: Text(
        'Marie28@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .apply(color: MColors.white),
      ),
      trailing: IconButton(
        icon: const Icon(
          Iconsax.edit,
          color: MColors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
