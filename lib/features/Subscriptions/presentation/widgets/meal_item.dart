import 'package:flutter/material.dart';
import 'package:mealy/features/Meals/domain/entities/meals_entity.dart';
import 'package:mealy/features/Meals/presentation/widgets/meals_details_container.dart';

import '../../../Meals/presentation/widgets/restaurant.dart';
import 'meal_info_alert_dialog.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return MealInfoAlertDialog(
              chosen:true ,
              meal:meal,
            );
          }),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage( 'http://meallyapp.runasp.net/${meal.pictureUrl}'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          children: [
           const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                MealsDetailsContainer(
                  meal:meal ,
                  mealPage: false,
                ),
               const RestaurantImage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
