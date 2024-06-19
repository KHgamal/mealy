import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealy/features/Meals/presentation/controller/cubits/meal/meal_cubit.dart';
import 'package:mealy/features/Subscriptions/presentation/widgets/meal_item.dart';

import '../../../Meals/presentation/controller/cubits/meal/meal_state.dart';

class MealItemListView extends StatelessWidget {
  const MealItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<MealCubit, MealCubitState>(
      builder: (context,state) {
         if (state is MealCubitLoading){
          return const Center(child: CircularProgressIndicator());
         }
          else if (state is MealCubitSuccess){
            final meals=state.meals;
            return ListView.builder(
                      itemCount:meals.length ,
                      itemBuilder: (context,i)=>
                      Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: MealItem(meal:meals[i] ,),
                      ),
                    );
          }
           else if (state is MealCubitFailure) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const SizedBox.shrink();
          }
      }
    );
  }
}