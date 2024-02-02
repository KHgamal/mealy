import 'package:flutter/material.dart';
import 'package:mealy/features/Meals/presentation/widgets/restaurant.dart';

import 'meal_date.dart';
import 'meals_details_container.dart';
class MealContainer extends StatelessWidget {
  const MealContainer({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage("https://s3-alpha-sig.figma.com/img/dbb5/f934/23da0e9cdb41444b2d48c2e03adf6805?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S75LLf5vTE9oM1Htb7DHm0h4rvr4M3-upOTQoHm7Mz-VGsbRyQlw3vSR39LSYSHzbBsTk61KM6ZBwausXs87yvQHSy5ZagU2lCa-IrLQc~8T0dvBNzA6yCGQ3zvA-sAyvRLQNt0sqx-2GRA29IFytKGFgvswId~sDt1D6NfB5AG9r5riBP9f~vwQ8MtLBhn7wPG65Y2DDNu-duO7vqMG2WkFIeJh6-obOUFVpRHcPmmOoBCMUtDIkMcUPbqDsc7UdU9nJWZU2n1Ah2z61-wjwdSmKBCPNUtYkCvZ44WPVH4HGHpUrGb5bo~~p~mw3ZC4hDORzioiBJDuTabsQlw1sw__", )
            ,fit: BoxFit.cover ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          MealDate(),
          Stack(
            children: [
              MealsDetailsContainer(),
              Restaurant(),
            ],
          )
        ],
      ),
    );
  }
}