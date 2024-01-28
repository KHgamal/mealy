import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
class CurrentPageCircle extends StatelessWidget {
  const CurrentPageCircle({super.key, required this.currentPageIndex});
final String currentPageIndex;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width*0.2;
    return Container(
      width: width,
      height: width ,
      decoration: ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(width: 1, color:AllColors.gray),
        ),
      ),
      child: Center(
        child: Text(
          '$currentPageIndex/3',
          textAlign: TextAlign.right,
          style: Styles.textStyleMedium18(context).copyWith(color:AllColors.buttonMainColor)
        ),
      ),
    );
  }
}
