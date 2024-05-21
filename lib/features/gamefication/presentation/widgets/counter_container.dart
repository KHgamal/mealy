import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import 'count_circle.dart';
class CounterContainer extends StatelessWidget {
  const CounterContainer({super.key, required this.count, required this.text,
   this.image =true});
  final String count;
  final String text;
  final bool? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
         border: Border.all(color: AllColors.containerBorder)
      ),
      padding:const EdgeInsets.symmetric(vertical: 5 ,horizontal: 3),
      child: Row(
        mainAxisAlignment: image==true? MainAxisAlignment.spaceAround:MainAxisAlignment.center,
        children: [
          CountCircle(count: count,),
          image==true? const  SizedBox() :const SizedBox(width: 5,) ,
          Text(text,style: Styles.textStyleMedium16(context).
          copyWith(color: AllColors.black),),
        image==true?  SvgPicture.asset(Assets.imagesCoinBag,width: 21,height: 29 ,): const  SizedBox()
        ],
      ),
    );
  }
}
