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
            image: NetworkImage(
              "https://s3-alpha-sig.figma.com/img/dbb5/f934/23da0e9cdb41444b2d48c2e03adf6805?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HnvCukCXDPL6bonnhTIXea4MDualK4MJOtSNhz541Kqj4pkqFYsZVLA-ZvniALJFkfK1jCQVfmM95zWvS1Hqji-mYyj1C5b5ciY6nXt0XQ21olBfmF4AQBxZJJDvOpeb0fyM1G9tVI6hTMFWs9U7jrD3mwEAiFns1DND91PgMxZ8YL-Gg4PBBnG3~elY9YVDliyvHR3TcCOvbGYKAKYAwNGR7Wv0WyA4xOCFBgry3YeU0BNuiLE1NTzrFlvx370tiVdPi3mcuY~XdI9kwTirLgMKN3BDOMliMEm807rrb9T4GxSgXUQxDzKaEJ1aHuOFMpnK9pwwXzmhNMGM4GOeZA__",
            ),
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
