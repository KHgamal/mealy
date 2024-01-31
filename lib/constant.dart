import 'package:flutter/material.dart';

import 'features/home/data/models/plan_model.dart';

Locale locale = const Locale('ar');

List<PlanModel> planDetailsList=[
  PlanModel(title: "شهرياً", price: "2500 جنيه", days: "24 يوم", limitation:"وجبة غداء واحدة يومياً"),
  PlanModel(title:"أسبوعياً", price:"200 جنيه", days:"5 أيام", limitation: "وجبة غداء واحدة يومياً"),
];