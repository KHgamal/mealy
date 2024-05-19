import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/features/completeData/presentation/views/location_details_view.dart';
import 'package:mealy/features/completeData/presentation/widgets/text_field_label.dart';
import 'package:mealy/generated/l10n.dart';

class AddAddressScreen extends StatefulWidget {
  static String id="AddAddressScreen";
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
   final formKey = GlobalKey<FormState>();

   TextEditingController regionController=TextEditingController();

  TextEditingController streetController=TextEditingController();

  TextEditingController buildingController=TextEditingController();

  TextEditingController detailsController=TextEditingController();

  TextEditingController floorController=TextEditingController();

  TextEditingController apartmentController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
        
            children: [
            CommonCustomAppBar(title: S.of(context).add_address),
            const SizedBox( height: 40,),
            LocationDetailsSection(regionController: regionController,
             buildingController: buildingController, streetController: streetController,
              detailsController: detailsController,
              widget: ApartmentSection(floorController: floorController, 
              apartmentController: apartmentController)
                ,),
             const Spacer(),
                      CommonButton(
                        txt: S.of(context).Confirm_address,
                        onPressed: () {
                      /*     if (formKey.currentState!.validate()) {
                          
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(S.of(context).complete_empty_fields)),
                            );} */
                        },
                        radius: 8,
                        high: 54,
                      ),
                     
          ],),
        ),
      ),
    );
  }
}

class ApartmentSection extends StatelessWidget {
  const ApartmentSection({
    super.key, required this.floorController, required this.apartmentController,

  });

  final TextEditingController floorController;
  final TextEditingController apartmentController;

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
    Row(
              children: [
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldLabel(
            text: S.of(context).Floor,
          ),
          CustomTextField(hintText: "الاستاد",controller: floorController,),
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
            text: S.of(context).Apartment_number,
          ),
         CustomTextField(hintText: "الاستاد",controller: apartmentController,),
        ],
      ),
    )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ],
          );
  }
}