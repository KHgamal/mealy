import 'package:flutter/material.dart';
import 'package:mealy/features/profile/presentation/controller/image_picker_provider/image_picker_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../generated/assets.dart';

class UserInfoProvider extends ChangeNotifier {
  String? name;
  String number;
  String? image;
  String? city;
  String email;
  String password;

  UserInfoProvider({
    this.name,
    this.number = "01*********8",
    this.image = Assets.imagesNoUser,
    this.city,
    this.email="kh*****@****.com",
    this.password="**********"
  });

  void updateFields({name,
number,
image,
city,
email,password ,context,isUpdatedButton
})  {
if(name!=null) this.name=name;
if(number!=null) this.number=number;
if(password!=null) this.password=password;
if(city!=null) this.city=city;
if(email!=null) this.email=email;
if(image!=null) this.image=image;
if(isUpdatedButton==true)  Provider.of<ImagePickerProvider>(context, listen: false).isUpdated=true;
    notifyListeners();
  }




}
