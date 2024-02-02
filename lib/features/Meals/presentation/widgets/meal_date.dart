import 'package:flutter/material.dart';

import '../../../../core/common/widgets/pink_button.dart';
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
          PinkButton(onPressed: (){},radius: 9,width: 117,txt: "الاحد,5ديسمبر",high: 35,),
        ],
      ),
    );
  }
}