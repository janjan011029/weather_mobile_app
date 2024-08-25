import 'package:flutter/material.dart';
import 'package:weather_mobile_app/core/router/route.dart';

final _myRouter = MyRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _myRouter.routes,
    );
  }
}
