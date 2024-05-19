import 'package:mealy/features/Meals/data/models/package_details_model.dart';
import 'package:mealy/features/home/data/models/notification_model.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';

import 'features/Meals/data/models/meal_details_model.dart';
import 'features/home/data/models/plan_model.dart';


double balance=50;
double counter=2000;
String points="500";
String point="0";
String coupon="2";
String currentLevel="المستوى الاول";
String currentLevelDescription="اساسى";
String pointsToCollect="200";

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
List<NotificationModel> notificationsInfoList(context)=>[
  NotificationModel(title: S.of(context).lunch_package_subscribed,date:"05:00",
  description: S.of(context).reservation_processed , icon: Assets.imagesCheckMark),

  NotificationModel(title: S.of(context).Dinner_package_canceled,date:"05:00",
  description: S.of(context).parking_reservation_cancelled,icon: Assets.imagesCloseMark),
  
  NotificationModel(title: S.of(context).Get_additional_discounts,date:"05:00",
  description: S.of(context).discount_on_many_packages , icon: Assets.imagesDiscountMark),

  NotificationModel(title: S.of(context).lunch_package_subscribed,date:"05:00",
  description: S.of(context).reservation_processed , icon: Assets.imagesCheckMark),
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

// UserInfo kUser = UserInfo(
//   city: 'طنطا',
//   name: 'رحمه جمال',
//   number: '01067196376',
//   image:
//       'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
// );
String calorie="1106";
