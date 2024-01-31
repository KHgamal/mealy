import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
class OptionsElement extends StatelessWidget {
  const OptionsElement({super.key, required this.text, required this.color});
final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      Icon(Icons.check_circle, color: AllColors.buttonMainColor,size: 19,),
       const SizedBox(width: 8,),
       Text(
           text,
           style: Styles.textStyleBook16(context).copyWith(color:color)
       ) ,
     ],
    );
  }
}
