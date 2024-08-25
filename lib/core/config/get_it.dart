import 'package:get_it/get_it.dart';
import 'package:weather_mobile_app/core/api/client.dart';
import 'package:weather_mobile_app/core/location/current_location.dart';
import 'package:weather_mobile_app/core/permission/app_permission.dart';
import 'package:weather_mobile_app/features/weather/data/data_sources/weather_remote_data_source.dart';
import 'package:weather_mobile_app/features/weather/data/repository/weather_repository_impl.dart';
import 'package:weather_mobile_app/features/weather/domain/repository/weather_repository.dart';
import 'package:weather_mobile_app/features/weather/domain/usecases/get_current_weather.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerLazySingleton<LocationService>(() => LocationServiceImpl());

  sl.registerLazySingleton<PermissionService>(() => PermissionServiceImpl());

  sl.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(DioClient()));

  sl.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImpl(sl<WeatherRemoteDataSource>()));

  sl.registerLazySingleton(() => GetCurrentWeather(sl<WeatherRepository>()));

  sl.registerLazySingleton(() => WeatherBloc(
        sl<GetCurrentWeather>(),
        sl<LocationService>(),
        sl<PermissionService>(),
      ));
}
