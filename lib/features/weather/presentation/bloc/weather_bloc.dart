import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_mobile_app/core/location/current_location.dart';
import 'package:weather_mobile_app/core/permission/app_permission.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/domain/usecases/get_current_weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final GetCurrentWeather client;
  final LocationService locationService;
  final PermissionService permissionService;
  WeatherBloc(
    this.client,
    this.locationService,
    this.permissionService,
  ) : super(WeatherInitial()) {
    on<GetWeatherEvent>(_getWeather);
  }

  FutureOr<void> _getWeather(
      GetWeatherEvent event, Emitter<WeatherState> emit) async {
    try {
      final isGranted = await permissionService.locationPermission();

      if (isGranted) {
        final userCurrentLocation = await locationService.getCurrentPosition();

        final longitude = userCurrentLocation.longitude;
        final latitude = userCurrentLocation.latitude;

        emit(WeatherLoading());

        final params = GetCurrentWeatherParams(
          latitude: latitude,
          longitude: longitude,
        );

        final result = await client.call(params);

        if (result.isLeft()) {
          emit(WeatherError(errMessage: 'Something went wrong'));
        }

        final weather = result.fold(
          (failure) =>
              throw Exception('Failed to get current weather: $failure'),
          (weather) => weather,
        );

        emit(WeatherLoaded(result: weather));
      } else {
        emit(WeatherError(errMessage: 'Permission denied'));
      }
    } catch (e) {
      emit(WeatherError(errMessage: 'Something went wrong'));
    }
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final weather = WeatherApiResultModel.fromJson(json);
      return WeatherLoaded(result: weather);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoaded) {
      return state.result.toJson();
    } else {
      return null;
    }
  }
}
