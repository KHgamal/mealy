import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
class OptionsElement extends StatelessWidget {
  const OptionsElement({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      visualDensity:VisualDensity(horizontal: 0, vertical: -4),
      dense: true,
      title:Text(
        text,
        textAlign: TextAlign.right,
        style: Styles.textStyleBook16(context).copyWith(color:AllColors.descr)
      ) ,
      horizontalTitleGap:8,
      leading: Icon(Icons.check_circle, color: AllColors.buttonMainColor,size: 19,
      ),
    );
  }
}
