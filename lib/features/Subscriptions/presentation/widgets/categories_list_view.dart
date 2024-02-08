import 'package:flutter/material.dart';
import 'package:mealy/features/Subscriptions/data/models/category_model.dart';

import '../../../../generated/assets.dart';
import 'category_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<CategoryModel> category = [
    CategoryModel(title: 'هيلثى', image: Assets.imagesFood1),
    CategoryModel(title: 'فول وطعمية', image: Assets.imagesFood2),
    CategoryModel(title: 'لحوم', image: Assets.imagesFood3),
    CategoryModel(title: 'اسماك', image: Assets.imagesFood1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.12,
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
