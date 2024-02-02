import 'package:flutter/material.dart';
import 'package:mealy/features/Meals/presentation/widgets/subscriptions_start_date_container.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
class PackageDetailsRow extends StatelessWidget {
  const PackageDetailsRow({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            S.of(context).package_details,
            style:Styles.textStyleMedium16(context).copyWith(color:
            AllColors.black )
        ),
        const Expanded(child: SizedBox()),
        const SubscriptionsStartDateContainer(),
      ],
    );
  }
}