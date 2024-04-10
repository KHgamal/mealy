import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/widgets/pink_button.dart';
import '../../../Subscriptions/presentation/controller/date controller/date_provider.dart';
import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';
class MealDate extends StatelessWidget {
  const MealDate({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12 ,top:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PinkButton(onPressed: (){},radius: 9,width: 117, high: 35,
            txt: "${DateFormat.E(Provider.of<AppLanguage>(context).locale == const Locale('en')?"en_US":'ar_SA').
            format(Provider.of<DateProvider>(context). dateSelected)
            } , ${DateFormat.MMMMd( Provider.of<AppLanguage>(context).locale ==
                const Locale('en')?"en_US":'ar_SA').format(Provider.of<DateProvider>
              (context). dateSelected)} "
                ,),
        ],
      ),
    );
  }
}