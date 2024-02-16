import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import '../../../../generated/l10n.dart';
import '../../../Auth/presentation/widgets/header_title.dart';
import '../widgets/alert_dialog.dart';
import '../widgets/current_page_circle.dart';
import '../widgets/text_field_label.dart';

class LocationDetailsView extends StatefulWidget {
  const LocationDetailsView({super.key});
  static String id = "LocationDetailsView";

  @override
  State<LocationDetailsView> createState() => _LocationDetailsViewState();
}

class _LocationDetailsViewState extends State<LocationDetailsView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController regionController=TextEditingController();
  TextEditingController streetController=TextEditingController();
  TextEditingController buildingController=TextEditingController();
  TextEditingController detailsController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            HeaderTitle(
              title: S.of(context).complete_Data,
              subTitle: S.of(context).authSubTitle,
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CurrentPageCircle(
                      currentPageIndex: '3',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFieldLabel(
                      text: S.of(context).region,
                    ),
                    CustomTextField(hintText: "الاستاد",controller: regionController,),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFieldLabel(
                                text: S.of(context).building,
                              ),
                              CustomTextField(hintText: "الاستاد",controller: buildingController,),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFieldLabel(
                                text: S.of(context).street,
                              ),
                             CustomTextField(hintText: "الاستاد",controller: streetController,),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldLabel(
                      text: S.of(context).details,
                    ),
                    CustomTextField(
                      controller: detailsController,
                      hintText: S.of(context).any_details,
                      maxLines: true,
                      height: 107,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CommonButton(
                      txt: S.of(context).next,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const CustomAlertDialog();
                              });
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(S.of(context).complete_empty_fields)),
                          );}
                      },
                      radius: 8,
                      high: 54,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
