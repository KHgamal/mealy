import 'dart:io';

import 'package:flutter/material.dart';

import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/features/profile/presentation/controller/user_info_provider/user_info_provider.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../controller/image_picker_provider/image_picker_provider.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});
  static String id = "EditProfileView";

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final userInfo = Provider.of<UserInfoProvider>(context, listen: false);
    nameController = TextEditingController(text: userInfo.name ?? S.of(context).userName);
    phoneController = TextEditingController(text: userInfo.number);
    emailController = TextEditingController(text: userInfo.email);
    passController = TextEditingController(text: userInfo.password);
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonCustomAppBar(title: S.of(context).profile),
              const SizedBox(height: 24),
              const ImageContainer(),
              const SizedBox(height: 24),
              ProfileTextField(icon: Icons.person, controller: nameController),
              ProfileTextField(icon: Icons.phone_android, controller: phoneController),
              ProfileTextField(icon: Icons.email, controller: emailController),
              ProfileTextField(icon: Icons.shield, controller: passController),
              const DeleteAccountSection(),
              const Spacer(),
              CommonButton(
                onPressed: () {
                  Provider.of<UserInfoProvider>(context, listen: false).updateFields(
                    name: nameController.text,
                    number: phoneController.text,
                    email: emailController.text,
                    password: passController.text,
                    isUpdatedButton: true,
                    context: context,
                  );
                },
                radius: 9,
                txt: S.of(context).update,
                high: 54,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteAccountSection extends StatelessWidget {
  const DeleteAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Icon(Icons.info_outline, color: AllColors.buttonMainColor,),
       const SizedBox(width: 8,),
       Text(S.of(context).delete_account,style: Styles.textStyleMedium12(context)
       .copyWith(color: AllColors.buttonMainColor),)
     ],
    );
  }
}

class ProfileTextField extends StatelessWidget {
final IconData icon;
final TextEditingController controller;
  const ProfileTextField({
    super.key, required this.icon, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 19),
      child: TextFormField(
          style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.mainText),
        controller:controller ,
        decoration: InputDecoration(
           enabledBorder: OutlineInputBorder( 
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: AllColors.tfBorder)),
           focusedBorder:  OutlineInputBorder( 
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: AllColors.tfBorder)) ,
            prefixIcon: Container(
              margin:const EdgeInsets.all(8),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              color: AllColors.otpBg),
              child: Icon(icon,size: 24,color: AllColors.black, )) ,
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {// ,listen: false
    File? selectedImage= Provider.of<ImagePickerProvider>(context).selectedImage;
    bool isUpdated=Provider.of<ImagePickerProvider>(context).isUpdated;
    return Container(
      height: 88,
      width: 90,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(24.15) ,
       // if it's not google auth , there will not be an image then it will use asset
        // but if it's google , it will use network
       image: DecorationImage(image:selectedImage==null? Provider.of<UserInfoProvider>(context).image==
           Assets.imagesNoUser? const AssetImage(Assets.imagesNoUser) as ImageProvider:
           NetworkImage(Provider.of<UserInfoProvider>(context).image!):FileImage(selectedImage)
       ), ),
       child:isUpdated==false?const HoverContainer():const SizedBox(),

    );
  }
}

class HoverContainer extends StatelessWidget {
  const HoverContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 88,
     width: 90,
     decoration: BoxDecoration(
     borderRadius:BorderRadius.circular(24.15) ,
     color: Colors.black.withOpacity(0.59),),
    child: IconButton(onPressed: ()=>Provider.of<ImagePickerProvider>(context,
        listen: false).pickImage(context),color: Colors.white,iconSize: 30,
    icon:const  Icon(Icons.edit_outlined)),);
  }
}