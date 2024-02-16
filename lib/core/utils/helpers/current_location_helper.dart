import 'package:geolocator/geolocator.dart';

// https://medium.com/@fernnandoptr/how-to-get-users-current-location-address-in-flutter-geolocator-geocoding-be563ad6f66a#0634

class LocationHelper {

  static Future<Position> getCurrentLocation() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      await Geolocator.requestPermission();
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
// LocationPermission permission;
// if (!serviceEnabled) {
// ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
// content: Text('Location services are disabled. Please enable the services')));
// return false;
// }
// permission = await Geolocator.checkPermission();
// if (permission == LocationPermission.denied) {
// permission = await Geolocator.requestPermission();
// if (permission == LocationPermission.denied) {
// ScaffoldMessenger.of(context).showSnackBar(
// const SnackBar(content: Text('Location permissions are denied')));
// return false;
// }
// }
// if (permission == LocationPermission.deniedForever) {
// ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
// content: Text('Location permissions are permanently denied, we cannot request permissions.')));
// return false;
// }
