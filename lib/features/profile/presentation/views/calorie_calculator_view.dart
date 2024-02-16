import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/features/profile/presentation/widgets/gender_container.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/common/widgets/radiobutton_4_vertical.dart';
import '../../../../generated/l10n.dart';
import '../widgets/bottom_sheet.dart';
import '../widgets/input_label.dart';

class CalorieCalculatorView extends StatefulWidget {
  const CalorieCalculatorView({super.key});
  static String id = "CalorieCalculatorView";
  @override
  State<CalorieCalculatorView> createState() => _CalorieCalculatorViewState();
}

class _CalorieCalculatorViewState extends State<CalorieCalculatorView> {
  int selectedIndex = 0;
  final formKey = GlobalKey<FormState>();
  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  TextEditingController ageController=TextEditingController();
  TextEditingController weightController=TextEditingController();
  TextEditingController heightController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Form(
            key: formKey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonCustomAppBar(
                  title: S.of(context).Calorie_calculator,
                ),
                const SizedBox(
                  height: 17,
                ),
                PropertiesLabel(
                  text: S.of(context).select_gender,
                ),
                Row(
                  children: [
                    Expanded(
                        child: GenderContainer(
                      text: S.of(context).male,
                      isSelected: selectedIndex == 0,
                      onTap: () => updateIndex(0),
                    )),
                    const SizedBox(
                      width: 17,
                    ),
                    Expanded(
                        child: GenderContainer(
                      text: S.of(context).female,
                      isSelected: selectedIndex == 1,
                      onTap: () => updateIndex(1),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                PropertiesLabel(
                  text: S.of(context).Enter_your_age,
                ),
                 CustomTextField(
                  controller: ageController,
                  hintText: "00",
                  fillColor: Colors.white,
                  height: 48,
                  calorieCalculator: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                PropertiesLabel(
                  text: S.of(context).Enter_your_weight,
                ),
                CustomTextField(
                  controller: weightController,
                  hintText: S.of(context).km,
                  fillColor: Colors.white,
                  height: 48,
                  calorieCalculator: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                PropertiesLabel(
                  text: S.of(context).Enter_your_height,
                ),
                CustomTextField(
                  controller: heightController,
                  hintText: S.of(context).cm,
                  fillColor: Colors.white,
                  height: 48,
                  calorieCalculator: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                Divider(
                  color: AllColors.tfFill,
                  endIndent: 80,
                  indent: 80,
                ),
                const SizedBox(
                  height: 24,
                ),
                PropertiesLabel(
                  text: S.of(context).times_you_exercise_per_week,
                ),
                const SizedBox(
                  height: 8,
                ),
                RadioButton4OptionVertical(
                  text1: S.of(context).from_1_3_times_a_week,
                  text2: S.of(context).from_1_to_3_5_times_a_week,
                  text3: S.of(context).work_in_sports_training,
                  text4: S.of(context).do_not_exercise,
                ),
                const SizedBox(
                  height: 30,
                ),
                CommonButton(
                  txt: S.of(context).Calculate_your_calories,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      calorieBottomSheet(context);
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(S.of(context).complete_empty_fields)),
                      );}
                  },
                  radius: 12,
                  high: 48,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
