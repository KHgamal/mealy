import 'package:flutter/material.dart';
import 'package:mealy/features/Meals/data/models/package_details_model.dart';

import 'features/home/data/models/plan_model.dart';

Locale locale = const Locale('ar');

List<PlanModel> planDetailsList=[
  PlanModel(title: "شهرياً", price: "2500 جنيه", days: "24 يوم", limitation:"وجبة غداء واحدة يومياً"),
  PlanModel(title:"أسبوعياً", price:"200 جنيه", days:"5 أيام", limitation: "وجبة غداء واحدة يومياً"),
];

List<PackageDetailsModel> packageDetailsList=[
  PackageDetailsModel(planTitle: "اسبوعية", planType: "غداء",
      planTypeIcon:" planTypeIcon", categoryIcon:"categoryIcon", category: "صحى",
      planDays: "5 ايام", planLimitation:"وجبة غداء واحدة يوميا")
];