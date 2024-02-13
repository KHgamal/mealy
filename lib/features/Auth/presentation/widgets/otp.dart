import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/common/res/colors.dart';

// Get currently typed text and use your condition to validate it.
// for example: if (currentText.length != 6 || currentText != "your desired code")

class Otp extends StatelessWidget {
  const Otp({super.key, required this.otpController});
  final TextEditingController otpController;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fieldWidth = screenWidth * 0.12;
    double fieldHeight = fieldWidth;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PinCodeTextField(
        showCursor: false,
        controller: otpController,
        keyboardType: TextInputType.number,
        textStyle: Styles.textStyleSemiBold32(context)
            .copyWith(color: AllColors.buttonMainColor),
        hintStyle: Styles.textStyleSemiBold32(context)
            .copyWith(color: AllColors.mainText),
        hintCharacter: "-",
        appContext: context,
        length: 6,
        enableActiveFill: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        pinTheme: PinTheme(
          fieldHeight: fieldHeight,
          fieldWidth: fieldWidth,
          //fieldOuterPadding:const EdgeInsets.only(right: 12) ,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15),
          // borderColor
          inactiveColor: AllColors.otpBg,
          activeColor: AllColors.buttonMainColor,
          selectedColor: AllColors.buttonMainColor,
          // bg Color
          activeFillColor: AllColors.otpBg,
          inactiveFillColor: AllColors.otpBg,
          selectedFillColor: AllColors.otpBg,
          // border width
          activeBorderWidth: 1,
          selectedBorderWidth: 1,
        ),
      ),
    );
  }
}
