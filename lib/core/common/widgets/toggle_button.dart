import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key, required this.txt1, required this.txt2, this.onToggle, this.current});
  final void Function(int?)? onToggle;
  final int? current;
  final String txt1;
  final String txt2;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: MediaQuery.of(context).size.width * 0.45,
      minHeight: 43,
      cornerRadius: 31,
      activeBgColors: [
        [AllColors.buttonMainColor],
        [AllColors.buttonMainColor],
      ],
      activeFgColor: AllColors.white,
      inactiveBgColor: AllColors.white,
      inactiveFgColor: AllColors.gray,
      initialLabelIndex:widget.current ?? 0,
      totalSwitches: 2,
      customTextStyles: [
        Styles.textStyleToggleButton(context),
        // Styles.textStyleMedium16(context).copyWith(color: null),
        Styles.textStyleToggleButton(context),
      ],
      labels: [widget.txt1, widget.txt2],
      radiusStyle: true,
      onToggle:widget.onToggle ??
          (index) {
        //print('switched to: $index');
      },
    );
  }
}
