import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import '../../../../generated/l10n.dart';
import '../../../Auth/presentation/widgets/header_title.dart';
import '../widgets/current_page_circle.dart';
import '../widgets/text_field_label.dart';

class LocationDetailsView extends StatelessWidget {
  const LocationDetailsView({super.key});
  static String id="LocationDetailsView";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            HeaderTitle(
              title:S.of(context).complete_Data,
              subTitle:S.of(context).authSubTitle ,
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CurrentPageCircle(currentPageIndex: '3',),
                  const SizedBox(height: 40,),
                  
                  TextFieldLabel(text: S.of(context).region,),
                  const CustomTextField(hintText:"الاستاد"),
                  const SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldLabel(text: S.of(context).building,),
                            const CustomTextField(hintText:"الاستاد"),],
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFieldLabel(text: S.of(context).street,),
                          const CustomTextField(hintText:"الاستاد"),],
                      ),)
                    ],
                  ),
                  const SizedBox(height: 20,),

                  TextFieldLabel(text: S.of(context).details,),
                  CustomTextField(hintText: S.of(context).any_details, maxLines: true,height: 107,),
                  const SizedBox(height: 40,),
                  CommonButton(txt:S.of(context).next, onPressed:(){}, radius:8),
                ],
              ),
            ),

          ],
        ) ,
      ),
    );
  }
}