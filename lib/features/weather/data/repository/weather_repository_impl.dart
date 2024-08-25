import 'package:fpdart/fpdart.dart';
import 'package:weather_mobile_app/core/error/exceptions.dart';
import 'package:weather_mobile_app/core/error/failure.dart';
import 'package:weather_mobile_app/features/weather/data/data_sources/weather_remote_data_source.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  const WeatherRepositoryImpl(this.weatherRemoteDataSource);

  @override
  Future<Either<Failure, WeatherApiResultModel>> currentWeatherByLocation(
      {required double longitude, required double latitude}) async {
    try {
      final response = await weatherRemoteDataSource.getCurrentWeather(
        latitude: latitude,
        longitude: longitude,
      );
      return right(response);
    } on ServerException catch (e) {
      return left(ServerException(e.message));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
