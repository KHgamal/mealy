import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';

class Styles {
  static const String kFontFamily = 'Expo Arabic';
  static TextStyle textStyleMedium12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w500,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleBook12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleSemiBold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleMedim5(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 5),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w500,
      color: AllColors.mapText,
    );
  }

  static TextStyle textStyleMedium18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w500,
      color: AllColors.mainText,
    );
  }

  static TextStyle textStyleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.buttonMainColor,
    );
  }

  static TextStyle textStyleBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w700,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleMedium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w500,
      color: AllColors.mainText,
    );
  }

  static TextStyle textStyleSemiBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleBook14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
      color: AllColors.gray,
    );
  }

  static TextStyle textStyleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.mainText,
    );
  }

  static TextStyle textStyleBook16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w500,
      color: AllColors.gray,
    );
  }

  static TextStyle textStyleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.mainText,
    );
  }

  static TextStyle textStyleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w700,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleSemiBold32(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.black,
    );
  }

  static TextStyle textStyleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AllColors.white,
    );
  }

  static TextStyle textStyleSemiBold96(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 96),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w600,
      color: AllColors.buttonMainColor,
    );
  }

  static TextStyle textStyleToggleButton(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: Styles.kFontFamily,
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 450;
  } else if (width < 900) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
