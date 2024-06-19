import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../../../Meals/domain/entities/categories_entity.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final Category categoryModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.10365,
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.07656,
            width: MediaQuery.sizeOf(context).width * 0.173,
            decoration: const BoxDecoration(
              color: Color(0XFFFCAAB2),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Image.network("http://meallyapp.runasp.net/${categoryModel.pictureUrl}"),
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            categoryModel.name,
            style: Styles.textStyleMedium12(context),
          )
        ],
      ),
    );
  }
}
