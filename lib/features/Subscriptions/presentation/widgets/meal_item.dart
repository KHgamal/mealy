import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mealy/features/Meals/presentation/widgets/meals_details_container.dart';

import '../../../Meals/presentation/widgets/restaurant.dart';
import '../../data/models/meal_info_model.dart';
import 'meal_info_alert_dialog.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return MealInfoAlertDialog(
              mealInfo: MealInfoModel(
                title: 'فاهيتا اللحم مع الجبن والخضروات',
                image: 'assets/images/meal.png',
                subTitle: 'زودلز (كوسة) + قطع لحم + صلصة',
                fat: '24',
                carbo: '24',
                calory: '24',
                protine: '24',
                chosen: true,
              ),
            );
          }),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: CachedNetworkImageProvider(
"https://s3-alpha-sig.figma.com/img/dbb5/f934/23da0e9cdb41444b2d48c2e03adf6805?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qRoOrwZU1DZc1BlhjIJQEnxqD7xb~FZouLKo9T91Qo26w54SQhES8uFGFtwoT5UJhp~bkEMSjO6dUxzhuWYEesEgg99ezae9MwiMTKLa8Y8scC6t~9U9W5E5yRC3~DT7aeWp23RZtwj3zLCvcLGv134M2KkQ8ROwdw5Q0dD1ZlhxGVNodoGKpLu~OFDYjEJLsALSG3vFcEdPOFpgF~OY6xK8Oe0SDklftVPHB0CSxNrlWEonnG1w4zd-dOJ~kuUy4g3RmlCH9WtPaq9doSaITQP9HyhfSKZ1ZXzW800Xe3jSSMMsV9cY-O-YQC9XwGxy~uqjvI6ButpCWbX2xdhiVg__"
        ,),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                MealsDetailsContainer(
                  mealPage: false,
                ),
                Restaurant(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
