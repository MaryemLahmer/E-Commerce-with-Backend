import 'package:e_commerce_with_backend/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_with_backend/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class MChoiceChip extends StatelessWidget {
  const MChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor =MHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor
          ? const SizedBox()
          :  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle:  TextStyle(color: selected ? MColors.white : null),
      avatar: isColor
          ? CircularContainer(
              width: 40,
              height: 40,
              backgroundColor: MHelperFunctions.getColor(text)!,
            )
          : null,
      shape: isColor? const CircleBorder():null,
      labelPadding: isColor? const EdgeInsets.all(0):null,
      padding: isColor? const EdgeInsets.all(0):null,
      backgroundColor: isColor? MHelperFunctions.getColor(text)!:null,
    );
  }
}
