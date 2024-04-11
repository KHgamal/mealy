import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';
import '../res/styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.height,
      this.suffixIcon = false,
      this.prefixIcon,
      this.calorieCalculator = false,
      this.fillColor,
      this.payment = false,
      this.maxLines = false,
      required this.controller,

      this.initialvalue,  this.obscureText=false});
  final double? height;
  final bool suffixIcon;
  final Widget? prefixIcon;
  final bool payment;
  final bool calorieCalculator;
  final Color? fillColor;
  final String hintText;
  final bool maxLines;
  final bool? obscureText;
  final TextEditingController controller;
  final String? initialvalue;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText= false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 54,
      child: TextFormField(
        initialValue: widget.initialvalue,
        controller: widget.controller,
        validator: widget.maxLines == false
            ? (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).field_is_required;
                }
                return null;
              }
            : null,
        textAlignVertical: TextAlignVertical.top,
        expands: widget.maxLines ? true : false,
        keyboardType: TextInputType.multiline,
        minLines: null,
        maxLines: widget.maxLines ? null : 1,
        //controller: textController,
        obscureText:obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: widget.maxLines ? 15 : 10,
                horizontal: widget.prefixIcon == null ? 15 : 0),
            errorStyle: const TextStyle(fontSize: 0.01),
            filled: true,
            fillColor: widget.fillColor ?? const Color(0xFFEEEEEE),
            prefixIconColor: AllColors.gray,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 24,
              minHeight: 24,
            ),
            suffixIconColor: AllColors.gray,
            // prefixIconConstraints: BoxConstraints(maxWidth:20),
            prefixIcon: Padding(
              padding: widget.prefixIcon == null
                  ? EdgeInsets.zero
                  : const EdgeInsets.all(8.0),
              child: widget.prefixIcon ?? const SizedBox(),
            ),
            suffixIcon: widget.suffixIcon
                ? IconButton(
                    icon: SvgPicture.asset(Assets.imagesEyeSlash),
                    onPressed: (){ setState(
                            () {
                              obscureText = ! obscureText;
                        }
                    ); }
                  )
                : const SizedBox(),
            hintText: widget.hintText,
            enabledBorder: widget.payment || widget.calorieCalculator
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: widget.calorieCalculator
                          ? AllColors.tfFill
                          : AllColors.tfBorder,
                    ),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
            focusedBorder: widget.payment || widget.calorieCalculator
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: widget.calorieCalculator
                          ? AllColors.tfFill
                          : AllColors.tfBorder,
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
