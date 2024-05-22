import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mealy/generated/assets.dart';
import 'package:provider/provider.dart';
import '../../../features/home/presentation/controller/guest_version_provider/guest_version_provider.dart';
import '../../../features/profile/presentation/controller/image_picker_provider/image_picker_provider.dart';
import '../../../features/profile/presentation/controller/user_info_provider/user_info_provider.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    File? selectedImage= Provider.of<ImagePickerProvider>(context).selectedImage;
    bool isUpdated=Provider.of<ImagePickerProvider>(context).isUpdated;
    return  CircleAvatar(
      radius: 25,
      backgroundColor: Colors.transparent,
      backgroundImage: selectedImage==null||isUpdated==false?
      Provider.of<UserInfoProvider>(context).image== Assets.imagesNoUser?
      const AssetImage(Assets.imagesNoUser) as ImageProvider:
      NetworkImage(Provider.of<UserInfoProvider>(context).image!):
      FileImage(selectedImage),
    );
  }
}
