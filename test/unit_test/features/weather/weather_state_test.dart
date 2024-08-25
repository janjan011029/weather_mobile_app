import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/feels_like_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/temperature_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';

void main() {
  test('WeatherLoaded state props comparison', () {
    final currentModel = CurrentModel((b) => b
      ..dt = 1625580000
      ..sunrise = 1625565000
      ..sunset = 1625618400
      ..temp = 28.3
      ..feelsLike = 30.0
      ..pressure = 1012
      ..humidity = 78
      ..dewPoint = 22.5
      ..uvi = 7.9
      ..clouds = 20
      ..visibility = 10000
      ..windSpeed = 4.6
      ..windDeg = 230
      ..weather = ListBuilder([
        WeatherModel((b) => b
          ..id = 800
          ..main = 'Clear'
          ..description = 'clear sky'
          ..icon = '01d')
      ]));

    final temperatureModel = TemperatureModel((b) => b
      ..day = 28.5
      ..min = 22.3
      ..max = 30.5
      ..night = 23.5
      ..eve = 25.0
      ..morn = 22.1);

    final feelsLikeModel = FeelsLikeModel((b) => b
      ..day = 29.1
      ..night = 23.8
      ..eve = 25.3
      ..morn = 22.6);

    // Create a dummy DailyModel
    final dailyModel = DailyModel((b) => b
      ..dt = 1625590800
      ..sunrise = 1625565000
      ..sunset = 1625618400
      ..temp.replace(temperatureModel)
      ..moonrise = 1625580000
      ..moonset = 1625634000
      ..moonPhase = 0.75
      ..feelsLike.replace(feelsLikeModel)
      ..pressure = 1013
      ..humidity = 77
      ..dewPoint = 22.7
      ..windSpeed = 5.1
      ..windDeg = 220
      ..windGust = 7.8
      ..weather = ListBuilder([
        WeatherModel((b) => b
          ..id = 801
          ..main = 'Clouds'
          ..description = 'few clouds'
          ..icon = '02d')
      ])
      ..clouds = 25
      ..pop = 0.1
      ..uvi = 8.5);

    final weatherApiResultModel = WeatherApiResultModel((b) => b
      ..lat = 14.5995
      ..lon = 120.9842
      ..timezone = 'Asia/Manila'
      ..timezoneOffset = 28800
      ..current.replace(currentModel)
      ..daily = ListBuilder([dailyModel, dailyModel]));

    final state = WeatherLoaded(result: weatherApiResultModel);

    final List<Object?> expectedProps = [weatherApiResultModel];

    // Compare state.props
    expect(state.props, expectedProps);
  });
}
