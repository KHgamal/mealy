class MealInfoModel {
  final String title;
  final String image;
  final String subTitle;
  final String fat, carbo, calory, protine;
  final bool chosen;

  MealInfoModel({
    required this.chosen,
    required this.title,
    required this.image,
    required this.subTitle,
    required this.fat,
    required this.carbo,
    required this.calory,
    required this.protine,
  });
}
