import 'package:flutter/material.dart';
import 'package:mealy/features/Subscriptions/data/models/category_model.dart';

import 'category_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<CategoryModel> category = [
    CategoryModel(title: 'هيلثى', image: 'assets/images/food1.png'),
    CategoryModel(title: 'فول وطعمية', image: 'assets/images/food2.png'),
    CategoryModel(title: 'لحوم', image: 'assets/images/food3.png'),
    CategoryModel(title: 'اسماك', image: 'assets/images/food1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: category[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 25,
          );
        },
      ),
    );
  }
}
