import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../res/styles.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key, required this.hintText , this.width,this.height,this.radius,
   this.suffixIcon,this.prefixIcon, this.obscureText}) : super(key: key);
  double? height;
  double? width;
  double? radius;
  Widget? suffixIcon;
  Widget? prefixIcon;
  InputBorder? border;
  bool? obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height?? 54,
      width: width??343,
      child: TextFormField(
          //controller: textController,
          obscureText: obscureText??false,
          decoration: InputDecoration(
          filled: true,
          fillColor:const Color(0xFFEEEEEE),
          prefixIcon:prefixIcon ?? const SizedBox(),
          suffixIcon:suffixIcon ?? const SizedBox()  ,
          hintText: hintText,
          border:border??InputBorder.none,
          hintStyle: Styles.textStyle16.copyWith(color: AllColors.gray , fontWeight:FontWeight.w500)
      ),
      ),
    );
  }
}
