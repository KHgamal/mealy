import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/styles.dart';

class RadioButton4OptionVertical extends StatefulWidget {
  const RadioButton4OptionVertical({
  super.key,
  this.height,
  this.widget,
  required this.text1,
  required this.text2,
  required this.text3,
  required this.text4,
  });
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final double? height;
  final Widget? widget;
  @override
  State<RadioButton4OptionVertical> createState() => _RadioButton4OptionVerticalState();
}

class _RadioButton4OptionVerticalState extends State<RadioButton4OptionVertical> {
  int selection = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selection = 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            decoration: BoxDecoration(
                color: selection == 1
                    ? AllColors.buttonBgColor
                    : AllColors.unChoosenGender,
                border: Border.all(
                    color: selection == 1
                        ? AllColors.buttonMainColor
                        : AllColors.gray,
                    width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text1,
                      style: selection == 1
                          ? Styles.textStyleBook16(context)
                          .copyWith(color: AllColors.mainText)
                          : Styles.textStyleBook16(context)
                          .copyWith(color: AllColors.disabledText),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 1,
                  fillColor: selection == 1
                      ? MaterialStateProperty.all(AllColors.buttonMainColor)
                      : MaterialStateProperty.all(AllColors
                      .gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              selection = 2;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            decoration: BoxDecoration(
                color: selection == 2
                    ? AllColors.buttonBgColor
                    : AllColors.unChoosenGender,
                border: Border.all(
                    color: selection == 2
                        ? AllColors.buttonMainColor
                        : AllColors.gray,
                    width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text2,
                      style: selection == 2
                          ? Styles.textStyleBook16(context)
                          .copyWith(color: AllColors.mainText)
                          : Styles.textStyleBook16(context)
                          .copyWith(color: AllColors.disabledText),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 2,
                  fillColor: selection == 2
                      ? MaterialStateProperty.all(AllColors.buttonMainColor)
                      : MaterialStateProperty.all(AllColors
                      .gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              selection = 3;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            decoration: BoxDecoration(
                color: selection == 3
                    ? AllColors.buttonBgColor
                    : AllColors.unChoosenGender,
                border: Border.all(
                    color: selection == 3
                        ? AllColors.buttonMainColor
                        : AllColors.gray,
                    width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text3,
                      style: selection == 3
                          ? Styles.textStyleBook16(context)
                          .copyWith(color: AllColors.mainText)
                          : Styles.textStyleBook16(context).copyWith(
                          color: AllColors.disabledText),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 3,
                  fillColor: selection == 3
                      ? MaterialStateProperty.all(
                      AllColors.buttonMainColor)
                      : MaterialStateProperty.all(AllColors
                      .gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              selection = 4;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            decoration: BoxDecoration(
                color: selection == 4
                    ? AllColors.buttonBgColor
                    : AllColors.unChoosenGender,
                border: Border.all(
                    color: selection == 4
                        ? AllColors.buttonMainColor
                        : AllColors.gray,
                    width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text4,
                      style: selection == 4
                          ? Styles.textStyleBook16(context)
                          .copyWith(color: AllColors.mainText)
                          : Styles.textStyleBook16(context).copyWith(
                          color: AllColors.disabledText),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 4,
                  fillColor: selection == 4
                      ? MaterialStateProperty.all(
                      AllColors.buttonMainColor)
                      : MaterialStateProperty.all(AllColors
                      .gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}