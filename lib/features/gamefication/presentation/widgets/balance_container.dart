import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../constant.dart';


class BalanceContainer extends StatelessWidget {
  const BalanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14 , horizontal:25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
          color: AllColors.white
      ),
      child: Text("${S.of(context).balance} :$balance ${S.of(context).pound} ",
      style: Styles.textStyleMedium14(context).copyWith(color: AllColors.black)),
    );
  }
}
