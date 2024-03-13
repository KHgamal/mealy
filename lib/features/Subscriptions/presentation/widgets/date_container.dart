import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../../../../core/common/res/colors.dart';

class DateContainer extends StatelessWidget {
const DateContainer({super.key, required this.day, required this.date, required this.color, required this.onTap});
final Color color;
final String day;
final String date;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width:65,
          height:55,
         padding: const EdgeInsets.all(15),
         decoration: BoxDecoration(
          color: color,
          borderRadius:BorderRadius.circular(17) ,
        ),
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(day, style: Styles.textStyleMedium12(context).copyWith(
               color: AllColors.white
             ),),
             const SizedBox(height: 10,),
             Text(date, style: Styles.textStyleMedium12(context).copyWith(
                 color: AllColors.white
             ),),
           ],
         ) ,
      ),
    );
  }
}
