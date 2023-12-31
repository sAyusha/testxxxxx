import 'package:flutter/material.dart';

import '../config/router/app_route.dart';
import '../proximity.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProximityBrightnessControl(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SwapReads',
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        initialRoute: AppRoute.splashRoute,
        routes: AppRoute.getApplicationRoute(),
      ),
    );
  }
}
