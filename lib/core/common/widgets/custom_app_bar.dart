import 'package:flutter/material.dart';
import '../res/colors.dart';
import '../res/styles.dart';

class CommonCustomAppBar extends StatelessWidget {
  const CommonCustomAppBar({super.key, required this.title, this.color});

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          splashRadius: 0.0001,
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(minWidth: 22, maxWidth: 22),
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: AllColors.darkGray,
            size: 26,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: Styles.textStyleSemiBold20(context)
              .copyWith(color: color ?? AllColors.darkGray),
        ),
      ],
    );
  }
}
