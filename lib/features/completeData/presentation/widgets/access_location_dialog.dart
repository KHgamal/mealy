import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/white_button.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/utils/helpers/current_location_helper/current_location_helper.dart';
import '../../../../generated/l10n.dart';
import '../views/location_details_view.dart';
import '../views/location_type_view.dart';

class AccessLocationDialog extends StatefulWidget {
  const AccessLocationDialog({super.key});

  @override
  State<AccessLocationDialog> createState() => _AccessLocationDialogState();
}

class _AccessLocationDialogState extends State<AccessLocationDialog> {
  Position? position;
  String? currentAddress;

  Future<void> getCurrentPosition(context) async {
    final hasPermission = await LocationHelper.handleLocationPermission(context);
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => this.position = position);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("success")));
    }).catchError((e) {
      debugPrint(e);
    });
  }
  Future<void> getMyCurrentLocation(context) async {
   await getCurrentPosition(context);
    _getAddressFromLatLng(position!);
   Navigator.pushReplacementNamed(
     context,
     LocationDetailsView.id,
   );
  }
  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
        position.latitude, position.longitude)
        .then((List<Placemark> placeMarks) {
      Placemark place = placeMarks[0];
      setState(() {
        currentAddress =
        'street= ${place.street},\n'
        'subLocality= ${place.subLocality},\n'
        'subAdministrativeArea= ${place.subAdministrativeArea},\n'
        'postalCode= ${place.postalCode} ,\n'
        'name= ${place.name}\n'
        'country= ${place.country}\n'
        'locality= ${place.locality}\n'
        'isoCountryCode= ${place.isoCountryCode}\n'
        'administrativeArea= ${place.administrativeArea}\n'
        'subThoroughfare= ${place.subThoroughfare}\n'
        'thoroughfare= ${place.thoroughfare}\n';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AllColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.imagesAccessLocation , width: 79 ,height: 79,),
          const SizedBox(
            height: 20,
          ),
          Text(
            S.of(context).allowLocationAccess,
            textAlign: TextAlign.center,
            style: Styles.textStyleMedium16(context).copyWith(
              color: AllColors.buttonMainColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            S.of(context).toTrackYourOrder,
            textAlign: TextAlign.center,
            style: Styles.textStyleBook16(context)
                .copyWith(color: AllColors.descr),
          ),
          const SizedBox(
            height: 8,
          ),
          CommonButton(
            txt:S.of(context).allow,
            onPressed: ()  {
              getMyCurrentLocation(context);
            },
            radius: 10,
            width: MediaQuery.sizeOf(context).width * 0.699,
            high: 41,
          ),
          const SizedBox(
            height: 10,
          ),
          WhiteButton(
            txt:S.of(context).cancel,
            onPressed: ()=>Navigator.pushReplacementNamed(context, LocationTypeView.id),
            high: 41,
            width: MediaQuery.sizeOf(context).width * 0.699,
            radius: 10,
            style: Styles.textStyleSemiBold14(context)
                .copyWith(color: AllColors.buttonMainColor),
          )
        ],
      ),
    );
  }
}
