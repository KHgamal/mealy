import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Meals/presentation/controller/cubits/category/category_cubit.dart';
import '../../../Meals/presentation/controller/cubits/category/category_state.dart';
import 'category_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryCubitState>(
      builder: (context, state) {
         if (state is CategoryCubitLoading){
 return const Center(child: CircularProgressIndicator());
         }
         else if (state is CategoryCubitSuccess){
         final categories=state.categories;
                 return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.12,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(categoryModel: categories[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 25,
              );
            },
          ),
        );
         }else if (state is CategoryCubitFailure) {
            return Center(child: Text(state.errorMessage));
          }
    else {
            return const SizedBox.shrink();
          }
      }
    );
  }
}
