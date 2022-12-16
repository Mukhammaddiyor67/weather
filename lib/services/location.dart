import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getLocation() async {
    final result = await Geolocator.checkPermission();
    if (result == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      // print("position $position");
      latitude = position.latitude;
      longitude = position.longitude;
      // print(latitude);
      // print(longitude);
    } catch (e) {
      print(e);
    }
  }
}
