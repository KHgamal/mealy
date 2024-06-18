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
            image: AssetImage( 'assets/images/meal.png'),
/*              CachedNetworkImageProvider(
"https://s3-alpha-sig.figma.com/img/dbb5/f934/23da0e9cdb41444b2d48c2e03adf6805?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qRoOrwZU1DZc1BlhjIJQEnxqD7xb~FZouLKo9T91Qo26w54SQhES8uFGFtwoT5UJhp~bkEMSjO6dUxzhuWYEesEgg99ezae9MwiMTKLa8Y8scC6t~9U9W5E5yRC3~DT7aeWp23RZtwj3zLCvcLGv134M2KkQ8ROwdw5Q0dD1ZlhxGVNodoGKpLu~OFDYjEJLsALSG3vFcEdPOFpgF~OY6xK8Oe0SDklftVPHB0CSxNrlWEonnG1w4zd-dOJ~kuUy4g3RmlCH9WtPaq9doSaITQP9HyhfSKZ1ZXzW800Xe3jSSMMsV9cY-O-YQC9XwGxy~uqjvI6ButpCWbX2xdhiVg__",
            ), */
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          MealDate(),
          Stack(
            children: [
              MealsDetailsContainer(),
              RestaurantImage(),
            ],
          )
        ],
      ),
    );
  }
}
