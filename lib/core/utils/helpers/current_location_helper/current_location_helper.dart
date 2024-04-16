import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
// we first check whether the location service is enabled or disabled;
// if it’s disabled, we show the snackbar and return false.
// Then, we call the checkPermission() method to check if the user already granted permission to acquire the device’s location.
// If the permission is denied, we call the requestPermission() method to request permission to access the device’s location.
// If the permission is permanently denied, we show the snackbar and return false.
// Otherwise, we return true, meaning that permissions are granted.
class LocationHelper {
  static Future<bool> handleLocationPermission(context) async {
    LocationPermission permission;
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

}


