import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../res/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.width,
      this.height,
      this.suffixIcon = false,
      this.prefixIcon,
      this.obscureText = false,
      this.fillColor,
      this.payment = false,
      this.maxLines = false});
  final double? height;
  final double? width;
  final bool suffixIcon;
  final IconData? prefixIcon;
  final bool payment;
  final bool obscureText;
  final Color? fillColor;
  final String hintText;
  final bool maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 54,
      width: width ?? 343,
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
            suffixIconColor: AllColors.gray,
            // prefixIconConstraints: BoxConstraints(maxWidth:20),
            prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
            suffixIcon: suffixIcon
                ? IconButton(
                    icon: const Icon(Icons.visibility_off_outlined),
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
