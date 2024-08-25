import 'package:fpdart/fpdart.dart';
import 'package:weather_mobile_app/core/error/failure.dart';
import 'package:weather_mobile_app/core/usecase/usecase.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/domain/repository/weather_repository.dart';

class GetCurrentWeather
    implements UseCase<WeatherApiResultModel, GetCurrentWeatherParams> {
  final WeatherRepository weatherRepository;

  const GetCurrentWeather(this.weatherRepository);

  @override
  Future<Either<Failure, WeatherApiResultModel>> call(
      GetCurrentWeatherParams params) async {
    return weatherRepository.currentWeatherByLocation(
      longitude: params.longitude,
      latitude: params.latitude,
    );
  }
}

class GetCurrentWeatherParams {
  final double longitude;
  final double latitude;

  GetCurrentWeatherParams({
    required this.longitude,
    required this.latitude,
  });
}
