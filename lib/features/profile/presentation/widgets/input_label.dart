import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';
class PropertiesLabel extends StatelessWidget {
  const PropertiesLabel({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            text,
            style: Styles.textStyleMedium14(context)
        ),
        const SizedBox(height:8,)
      ],
    );
  }
}