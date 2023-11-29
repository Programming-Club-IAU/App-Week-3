//checking for locationg permission & fetching location of the user's device

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

/*RxBool for creating reactive objects, allows you to store and update location coordinations and notify the listener of changes
setting isLoading to true so it start's loading until we get the location values*/
class GlobalController extends GetxController {
  final RxBool _isLoading = true.obs;
  final RxDouble _lattitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

  RxBool checkLoading() => _isLoading;
  RxDouble getLattitude() => _lattitude;
  RxDouble getLongitude() => _longitude;

  @override
  //-event handler-initializing variables, you can use Init()
  void onInit() {
    if (_isLoading.isTrue) {
      getLocation();
    }
    super.onInit();
  }

  getLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;
    //waiting for location permission before fetching locationg API
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      return Future.error('Location services are enabled');
    }

    //cheack permission
    locationPermission = await Geolocator.checkPermission();
    //getting user's location permission
    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are denied');
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error('Location permission is denied');
      }
    }

    //update values and retrive user location
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      _lattitude.value = value.latitude;
      _longitude.value = value.longitude;
      _isLoading.value = false;
    });
  }
}
