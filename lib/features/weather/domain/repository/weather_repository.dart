import 'package:weather_mobile_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';

abstract interface class WeatherRepository {
  Future<Either<Failure, WeatherApiResultModel>> currentWeatherByLocation({
    required double longitude,
    required double latitude,
  });
}