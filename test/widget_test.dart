import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_mobile_app/core/config/get_it.dart';
import 'package:weather_mobile_app/core/location/current_location.dart';
import 'package:weather_mobile_app/core/permission/app_permission.dart';
import 'package:weather_mobile_app/core/router/route.dart';
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/feels_like_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/temperature_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';
import 'widget_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<WeatherBloc>(),
    MockSpec<LocationService>(),
    MockSpec<PermissionService>(),
  ],
)
void main() async {
  // Use a temporary directory for storage to avoid issues with file access
  final tempDir = await Directory.systemTemp.createTemp();
  Hive.init(tempDir.path);

  // Initialize HydratedBloc storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: tempDir,
  );

  // Initialize GetIt dependencies
  initGetIt();

  //Mock Weather API result
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

  final mockWeatherApiResultModel = WeatherApiResultModel((b) => b
    ..lat = 14.5995
    ..lon = 120.9842
    ..timezone = 'Asia/Manila'
    ..timezoneOffset = 28800
    ..current.replace(currentModel)
    ..daily = ListBuilder([dailyModel, dailyModel]));

  testWidgets('Test Widget MyApp Initial Screen', (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();

    final mockWeatherBloc = MockWeatherBloc();
    when(mockWeatherBloc.state).thenReturn(WeatherInitial());

    final myRouter = MyRouter();

    await tester.pumpWidget(
      BlocProvider<WeatherBloc>.value(
        value: mockWeatherBloc,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: myRouter.routes,
        ),
      ),
    );

    // Allow the widget to settle
    await tester.pumpAndSettle();

    // Check if the expected text is found
    expect(find.text('Click the Pin Icon to Fetch Weather'), findsOneWidget);
    expect(find.text('Get Updated Weather'), findsOneWidget);
  });
  testWidgets('Test Widget Get updated Weather', (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();

    // Create mocks for WeatherBloc and PermissionService
    final mockWeatherBloc = MockWeatherBloc();
    final mockPermissionService = MockPermissionService();

    // Mock permission service to always return granted permission
    when(mockPermissionService.locationPermission())
        .thenAnswer((_) async => true);
    // Mock the WeatherBloc to return WeatherLoading after button tap
    when(mockWeatherBloc.state).thenReturn(WeatherInitial());

    // Create the router
    final myRouter = MyRouter();

    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<WeatherBloc>.value(value: mockWeatherBloc),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: myRouter.routes,
        ),
      ),
    );

    // Allow the widget to settle
    await tester.pumpAndSettle();

    // Check initial text
    expect(find.text('Click the Pin Icon to Fetch Weather'), findsOneWidget);
    expect(find.text('Get Updated Weather'), findsOneWidget);

    // Simulate button tap
    // final getWeatherButton = find.byKey(const Key('GetWeatherKey'));
    final getWeatherButton = find.byKey(const Key('GetWeatherKey'));
    await tester.tap(getWeatherButton);

    // Simulate WeatherLoading state
    when(mockWeatherBloc.state).thenReturn(WeatherLoading());

    // Allow time for the widget to rebuild and display the CircularProgressIndicator
    await tester.pump();

    // Verify that the loading indicator is shown
    expect(find.byType(Center), findsWidgets);

    // Optionally simulate the completion of the API call and verify results
    when(mockWeatherBloc.state)
        .thenReturn(WeatherLoaded(result: mockWeatherApiResultModel));

    await tester.pumpAndSettle();

    // Verify the result display
    expect(find.byType(Center), findsWidgets);
  });
}
