import 'package:_fourtho/model/card_model.dart';
import 'package:_fourtho/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CustomGiftCard extends StatelessWidget {
  final CardModel card;
  final double width;
  final int? value;
  final bool showLabel;
  final bool showValue;

  const CustomGiftCard({
    Key? key,
    required this.card,
    required this.width,
    this.value,
    this.showLabel = true,
    this.showValue = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.asset(card.thumbnailPath, fit: BoxFit.cover),
            ),
            if (showLabel) ...[
              // ... it list the
              const SizedBox(
                height: 30,
              ),
              AppText.medium(card.name),
            ]
          ],
        ),
        if (showValue)
          Positioned(
              bottom: 10.0,
              right: 10.0,
              child: AppText.large('\$$value')) // conditional logic
      ],
    );

    // Container(
    //   color: ColorName.bgBlue, // flutter gen
    //   height: 100,
    // );
  }
}
