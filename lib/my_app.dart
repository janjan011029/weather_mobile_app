import 'package:flutter/material.dart';
import 'package:weather_mobile_app/core/router/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});

  final MyRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.routes,
    );
  }
}
