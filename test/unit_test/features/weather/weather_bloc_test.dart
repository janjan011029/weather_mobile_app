import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_mobile_app/core/error/failure.dart';
import 'package:weather_mobile_app/core/location/current_location.dart';
import 'package:weather_mobile_app/core/permission/app_permission.dart';
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/feels_like_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/temperature_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';
import 'package:weather_mobile_app/features/weather/domain/usecases/get_current_weather.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';

import 'weather_bloc_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<LocationService>(),
    MockSpec<PermissionService>(),
    MockSpec<GetCurrentWeather>(),
    MockSpec<WeatherApiResultModel>(),
  ],
)
void main() {
  late MockLocationService mockLocationService;
  late MockPermissionService mockPermissionService;
  late MockGetCurrentWeather mockGetCurrentWeather;
  late WeatherApiResultModel mockWeatherApiResultModel;
  late WeatherBloc weatherBloc;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    final tempDir = await Directory.systemTemp.createTemp();
    Hive.init(tempDir.path);

    final storage = await HydratedStorage.build(
      storageDirectory: tempDir,
    );

    HydratedBloc.storage = storage;

    mockLocationService = MockLocationService();
    mockPermissionService = MockPermissionService();
    mockGetCurrentWeather = MockGetCurrentWeather();

    // Initialized WeatherBloc
    weatherBloc = WeatherBloc(
      mockGetCurrentWeather,
      mockLocationService,
      mockPermissionService,
    );

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

    mockWeatherApiResultModel = WeatherApiResultModel((b) => b
      ..lat = 14.5995
      ..lon = 120.9842
      ..timezone = 'Asia/Manila'
      ..timezoneOffset = 28800
      ..current.replace(currentModel)
      ..daily = ListBuilder([dailyModel, dailyModel]));

    provideDummy<Either<Failure, WeatherApiResultModel>>(
      Right(mockWeatherApiResultModel),
    );
    provideDummy<Either<Failure, WeatherApiResultModel>>(
      Left(Failure()),
    );
  });

  tearDown(() => weatherBloc.close());

  final mockPosition = Position(
    longitude: 12.1,
    latitude: 12.1,
    timestamp: DateTime.now(),
    accuracy: 1000,
    altitude: 12.1,
    altitudeAccuracy: 11.1,
    heading: 11.1,
    headingAccuracy: 11.1,
    speed: 1000,
    speedAccuracy: 1000,
  );

  group('WeatherBloc Test', () {
    test('GetWeatherEvent event props', () {
      final event = GetWeatherEvent();

      weatherBloc.add(event);

      final List<Object?> expectedProps = [];

      expect(event.props, expectedProps);
    });

    blocTest(
      'emits [WeatherLoading, WeatherLoaded] when GetCurrentWeather is successful',
      build: () {
        when(mockPermissionService.locationPermission())
            .thenAnswer((_) async => true);

        when(mockLocationService.getCurrentPosition())
            .thenAnswer((_) async => mockPosition);

        when(mockGetCurrentWeather.call(any))
            .thenAnswer((_) async => Right(mockWeatherApiResultModel));

        return weatherBloc;
      },
      act: (bloc) => bloc.add(GetWeatherEvent()),
      expect: () => <WeatherState>[
        WeatherLoading(),
        WeatherLoaded(
          result: mockWeatherApiResultModel,
        ),
      ],
    );

    blocTest(
      'emits [WeatherLoading, WeatherError] when GetCurrentWeather get some error',
      build: () {
        when(mockPermissionService.locationPermission())
            .thenAnswer((_) async => true);

        when(mockLocationService.getCurrentPosition())
            .thenAnswer((_) async => mockPosition);

        when(mockGetCurrentWeather.call(any))
            .thenAnswer((_) async => Left(Failure()));

        return weatherBloc;
      },
      act: (bloc) => bloc.add(GetWeatherEvent()),
      expect: () => <WeatherState>[
        WeatherLoading(),
        WeatherError(errMessage: 'Something went wrong'),
      ],
    );

    blocTest(
      'emits [WeatherLoading, WeatherError] when GetCurrentWeather is location is denied',
      build: () {
        when(mockPermissionService.locationPermission())
            .thenAnswer((_) async => false);

        return weatherBloc;
      },
      act: (bloc) => bloc.add(GetWeatherEvent()),
      expect: () => <WeatherState>[
        WeatherError(errMessage: 'Permission denied'),
      ],
    );
  });
}
