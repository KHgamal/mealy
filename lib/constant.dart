import 'package:flutter/material.dart';
import 'package:mealy/features/Meals/data/models/package_details_model.dart';

import 'features/Meals/data/models/meal_details_model.dart';
import 'features/home/data/models/plan_model.dart';
import 'features/profile/data/models/user_info.dart';

Locale locale = const Locale('ar');

List<PlanModel> planDetailsList = [
  PlanModel(
      title: "شهرياً",
      price: "2500 جنيه",
      days: "24 يوم",
      limitation: "وجبة غداء واحدة يومياً"),
  PlanModel(
      title: "أسبوعياً",
      price: "200 جنيه",
      days: "5 أيام",
      limitation: "وجبة غداء واحدة يومياً"),
];

List<PackageDetailsModel> packageDetailsList = [
  PackageDetailsModel(
      planTitle: "اسبوعية",
      planType: "غداء",
      planTypeIcon: " planTypeIcon",
      categoryIcon: "categoryIcon",
      category: "صحى",
      planDays: "5 ايام",
      planLimitation: "وجبة غداء واحدة يوميا")
];

List<MealsDetailsModel> mealsDetailsList = [
  MealsDetailsModel(
      mealTitle: "فاهيتا اللحم مع الجبن والخضروات",
      address: "الاستاد-25",
      calories: "450 سعر حرارى",
      category: "هيلثى")
];
String termsAndCond =
    '''هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات

كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا 

كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.هذا النص هو مثال لنص يمكن أن يستبدل في نفسالمساحة،لقد تم توليد هذا النص من مولد النص العربى حيث يمكنك أن تولد مثل ''';

UserInfo kUser = UserInfo(
  city: 'طنطا',
  name: 'رحمه جمال',
  number: '01067196376',
  image:
      'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
);
