import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/styles.dart';

class RadioButton2OptionVertical extends StatefulWidget {
  const RadioButton2OptionVertical({
    super.key,
    this.height,
    this.widget,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  final double? height;
  final Widget? widget;
  @override
  State<RadioButton2OptionVertical> createState() => _RadioButton2OptionVerticalState();
}

class _RadioButton2OptionVerticalState extends State<RadioButton2OptionVertical> {
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
      ],
    );
  }
}
