import 'package:_fourtho/gen/colors.gen.dart';
import 'package:_fourtho/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function()? onTap;

  const CustomChip({
    Key? key,
    required this.label,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.only(right: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
          decoration: BoxDecoration(
              color:
                  isSelected ? ColorName.primaryColor : ColorName.disabledGrey,
              borderRadius: BorderRadius.circular(50.0)),
          child: Center(
              child: AppText.small(
            label,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : ColorName.primaryColor,
          ))),
    );
  }
}
