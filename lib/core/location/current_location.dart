import 'package:geolocator/geolocator.dart';

abstract interface class LocationService {
  Future<Position> getCurrentPosition();
}

class LocationServiceImpl implements LocationService {
  @override
  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
    );
  }
}