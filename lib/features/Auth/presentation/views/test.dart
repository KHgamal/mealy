import 'package:flutter/material.dart';
import 'package:mealy/features/Subscriptions/data/models/meal_info_model.dart';
import 'package:mealy/features/Subscriptions/presentation/widgets/meal_info_alert_dialog.dart';

class Test extends StatelessWidget {
  Test({super.key});
  final MealInfoModel mealInfoModel = MealInfoModel(
    title: 'فاهيتا اللحم مع الجبن والخضروات',
    image: 'assets/images/meal.png',
    subTitle: 'زودلز (كوسة) + قطع لحم + صلصة',
    fat: '24',
    carbo: '24',
    calory: '24',
    protine: '24',
    chosen: true,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return MealInfoAlertDialog(
                    mealInfo: mealInfoModel,
                  );
                });
          },
          child: const Text('show alert dialog'),
        ),
      )),
    );
  }
}
