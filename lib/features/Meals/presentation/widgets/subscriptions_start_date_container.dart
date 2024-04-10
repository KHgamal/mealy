import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
import '../../../Subscriptions/presentation/controller/date controller/date_provider.dart';
import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';

class SubscriptionsStartDateContainer extends StatelessWidget {
  const SubscriptionsStartDateContainer({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color:AllColors.buttonBgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Text(
        '${S.of(context).SubscriptionStartsFrom} ${DateFormat.MMMMd( Provider.of<AppLanguage>(context).locale ==
            const Locale('en')?"en_US":'ar_SA').format(Provider.of<DateProvider>(context). dateSelected)}',
          style:Styles.textStyleMedium12(context).copyWith(
              color:AllColors.buttonMainColor
          )
      ),
    );
  }
}