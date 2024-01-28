import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../../../generated/assets.dart';
import '../res/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.height,
      this.suffixIcon = false,
      this.prefixIcon,
      this.obscureText = false,
      this.fillColor,
      this.payment = false,
      this.maxLines = false});
  final double? height;
  final bool suffixIcon;
  final Widget? prefixIcon;
  final bool payment;
  final bool obscureText;
  final Color? fillColor;
  final String hintText;
  final bool maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 54,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.top,
        expands: maxLines ? true : false,
        keyboardType: TextInputType.multiline,
        minLines: null,
        maxLines: maxLines ? null : 1,
        //controller: textController,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: maxLines ? 15 : 10,
                horizontal: prefixIcon == null ? 15 : 0),
            filled: true,
            fillColor: fillColor ?? const Color(0xFFEEEEEE),
            prefixIconColor: AllColors.gray,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 24,
              minHeight: 24,
            ),
            suffixIconColor: AllColors.gray,
            // prefixIconConstraints: BoxConstraints(maxWidth:20),
            prefixIcon: Padding(
              padding: prefixIcon == null
                  ? EdgeInsets.zero
                  : const EdgeInsets.all(8.0),
              child: prefixIcon ?? const SizedBox(),
            ),
            suffixIcon: suffixIcon
                ? IconButton(
                    icon: SvgPicture.asset(Assets.imagesEyeSlash),
                    onPressed: () {},
                  )
                : const SizedBox(),
            hintText: hintText,
            enabledBorder: payment
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AllColors.tfBorder,
                    ),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
            focusedBorder: payment
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AllColors.tfBorder,
                    ),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
            hintStyle: Styles.textStyleMedium16(context).copyWith(
              color: AllColors.gray,
            )),
      ),
    );
  }
}
