import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_mobile_app/core/config/get_it.dart';
import 'package:weather_mobile_app/core/error/failure.dart';
import 'package:weather_mobile_app/core/location/current_location.dart';
import 'package:weather_mobile_app/core/permission/app_permission.dart';
import 'package:weather_mobile_app/core/router/route.dart';
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/feels_like_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/temperature_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';
import 'package:weather_mobile_app/features/weather/domain/usecases/get_current_weather.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_mobile_app/my_app.dart';

import '../test/unit_test/features/weather/weather_bloc_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<PermissionService>(),
    MockSpec<LocationService>(),
    MockSpec<GetCurrentWeather>(),
  ],
)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockPermissionService mockPermissionService;
  late MockLocationService mockLocationService;
  late MockGetCurrentWeather mockGetCurrentWeather;
  late WeatherApiResultModel mockWeatherApiResultModel;
  late Position mockPosition;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    final tempDir = await Directory.systemTemp.createTemp();
    Hive.init(tempDir.path);

    // Initialize HydratedBloc storage
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: tempDir,
    );

    //initialize service locator
    await initGetIt();

    mockPermissionService = MockPermissionService();

    mockLocationService = MockLocationService();

    mockGetCurrentWeather = MockGetCurrentWeather();

    mockPosition = Position(
      altitudeAccuracy: 1.0,
      headingAccuracy: 1.0,
      latitude: 14.630725,
      longitude: 121.0165928381114,
      timestamp: DateTime.now(),
      accuracy: 1.0,
      altitude: 1.0,
      heading: 1.0,
      speed: 1.0,
      speedAccuracy: 1.0,
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
      ..lat = 14.630725
      ..lon = 121.0165928381114
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

    // Mock the location permission service to simulate "permission granted"
    when(mockPermissionService.locationPermission()).thenAnswer(
      (_) async => true, // Simulate permission granted
    );

    when(mockLocationService.getCurrentPosition())
        .thenAnswer((_) async => mockPosition);

    when(mockGetCurrentWeather.call(any))
        .thenAnswer((_) async => Right(mockWeatherApiResultModel));
  });

  testWidgets('Integration Testing', (tester) async {
    final router = sl<MyRouter>();

    await tester.pumpWidget(BlocProvider(
      create: (context) => sl<WeatherBloc>(),
      child: MyApp(
        router: router,
      ),
    ));

    await tester.pumpAndSettle();

    //verify if the GetWeatherKey is exist
    final getWeatherButton = find.byKey(const Key('getWeatherKey'));

    //expect the result
    expect(getWeatherButton, findsOneWidget);

    // Tap the button
    await tester.tap(getWeatherButton);
    await tester.pumpAndSettle();

    // After tapping, the permission should have been granted by the mock
    // Now you can assert the weather data loading
    final loadingWidget = find.byKey(const Key('centerLoadingKey'));
    // expect(loadingWidget, findsOneWidget);

    // await tester.pumpAndSettle();

    // final weatherResultWidget = find.byKey(const Key('weatherResultKey'));
    // expect(weatherResultWidget, findsOneWidget);
  });
}
