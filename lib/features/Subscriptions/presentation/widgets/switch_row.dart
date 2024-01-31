import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';

class SwitchRow extends StatefulWidget {
  const SwitchRow({
    super.key,
  });

  @override
  State<SwitchRow> createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 36,
          height: 20,
          child: Switch(
            activeTrackColor: AllColors.buttonMainColor,
            inactiveTrackColor: const Color(0XFFE6E6E6),
            inactiveThumbColor: const Color(0XFFFCFCFD),
            value: enabled,
            onChanged: (bool value) {
              setState(() {
                enabled = value;
              });
            },
            thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Icon(
                  Icons.check,
                  color: AllColors.buttonMainColor,
                );
              }
              return Icon(
                Icons.check,
                color: AllColors.buttonMainColor,
              ); // All other states will use the default thumbIcon.
            }),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '',
          style: Styles.textStyleMedium12(context),
        )
      ],
    );
  }
}
