import 'package:e_commerce_with_backend/utils/device/device_utility.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class MTabBar extends StatelessWidget implements PreferredSizeWidget {
  // if you want to add th background color to tabs you have to wrap them in material widget
  // to do that we need preferred sized widget and thus this custom class
  const MTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? MColors.black:MColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: MColors.primary,
        labelColor: dark? MColors.white:MColors.primary,
        unselectedLabelColor: MColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
