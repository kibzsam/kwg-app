import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kwg/config/AppRoute.dart';
import 'package:kwg/config/Palette.dart';
import 'package:kwg/config/ServiceLocator.dart';

import 'SplashScreen.dart';
import 'home/Home.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kricunity',
        navigatorKey: locator!<AppRoute>().navigatorKey,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              backwardsCompatibility: false, // 1
              systemOverlayStyle: SystemUiOverlayStyle.light,
              color: Palette.primaryColor
              // 2
              ),
        ),
        onGenerateRoute: (_) => SplashScreen.route(),
        home: Home());
  }
}
