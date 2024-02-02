import 'package:flutter/material.dart';
import '../widgets/meal_container.dart';
import '../widgets/my_meals_appbar.dart';
import '../widgets/my_meals_header.dart';
import '../widgets/package_details_container.dart';
import '../widgets/package_details_row.dart';
class MyMealsView extends StatelessWidget {
  const MyMealsView({super.key});
  static String id="MyMealsView";
  @override
  Widget build(BuildContext context) {
   double width= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: ListView(
            children: [
              const MyMealsAppbar(),
              const SizedBox(height:30),
              const PackageDetailsRow(),
              const SizedBox(height: 30),
              PackageDetailsContainer(width: width*0.302),
              const SizedBox(height: 20),
              const MyMealsHeader(),
              const SizedBox(height: 20),
              const MealContainer(),
            ],
          ),
        ),
      ),
    );
  }
}











