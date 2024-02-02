import 'package:flutter/material.dart';
import '../res/colors.dart';
import '../res/styles.dart';

class CommonCustomAppBar extends StatelessWidget {
  const CommonCustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back,
          color: AllColors.darkGray,
          size: 26,
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: Styles.textStyleSemiBold20(context)
              .copyWith(color: AllColors.darkGray),
        ),
      ],
    );
  }
}
