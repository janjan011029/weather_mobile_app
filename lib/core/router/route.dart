import 'package:go_router/go_router.dart';
import 'package:weather_mobile_app/error_screen.dart';
import 'package:weather_mobile_app/features/weather/presentation/pages/weather_page.dart';

import 'route_utils.dart';

class MyRouter {
  late final GoRouter routes = GoRouter(
    errorBuilder: (context, state) => const ErrorScreen(),
    initialLocation: AppPage.home.path,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const WeatherPage();
        },
      ),
    ],
  );
}
