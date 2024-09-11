import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_mobile_app/bloc_observer.dart';
import 'package:weather_mobile_app/core/config/get_it.dart';
import 'package:weather_mobile_app/core/router/route.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_mobile_app/my_app.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  Bloc.observer = const AppBlocObserver();
  initGetIt();
  runApp(BlocProvider(
    create: (context) => sl<WeatherBloc>(),
    child: MyApp(
      router: sl<MyRouter>(),
    ),
  ));
}
