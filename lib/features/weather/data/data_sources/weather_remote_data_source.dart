import 'package:weather_mobile_app/core/api/client.dart';
import 'package:weather_mobile_app/core/error/exceptions.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';

abstract interface class WeatherRemoteDataSource {
  Future<WeatherApiResultModel> getCurrentWeather({
    required double longitude,
    required double latitude,
  });
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final DioClient client;

  const WeatherRemoteDataSourceImpl(this.client);

  @override
  Future<WeatherApiResultModel> getCurrentWeather({
    required double longitude,
    required double latitude,
  }) async {
    try {
      const appId = String.fromEnvironment('APP_ID');

      final response = await client.get(
        '/onecall',
        queryParameters: {
          "lat": latitude,
          "lon": longitude,
          "units": "metric",
          "appid": appId,
        },
      );

      final data = response.data as Map<String, dynamic>;
      final result = WeatherApiResultModel.fromJson(data);

      return result;
    } catch (e) {
      throw ServerException('An error occurred during getting weather');
    }
  }
}
