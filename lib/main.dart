import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigaion/splash_screen.dart';

import 'account_screen.dart';
import 'home_screen.dart';
import 'navigation_screen.dart';
import 'third_screen.dart';

void main() {
  runApp(MaterialApp(
    onGenerateInitialRoutes: (initialRoute) {
      return [
        // CupertinoPageRoute(
        //     builder: (context) => const NavigationScreen(),
        //     settings: const RouteSettings(name: "/")),
        CupertinoPageRoute(
            builder: (context) => const SplashScreen(),
            settings: const RouteSettings(name: "/splash"))
      ];
    },
    // initialRoute: "/navigaion",
    onGenerateRoute: onGenerateRoute,
  ));
}

Route? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case "/":
    //   return CupertinoPageRoute(
    //     builder: (context) => const NavigationScreen(),
    //   );
    case "/home":
      return CupertinoPageRoute(
        builder: (context) => const HomeScreen(),
        settings: settings,
      );
    case "/splash":
      return CupertinoPageRoute(
        builder: (context) => const SplashScreen(),
        settings: settings,
      );
    case "/account":
      return CupertinoPageRoute(
        builder: (context) => const AccountScreen(),
        settings: settings
      );
    case "/navigationScreen":
      return CupertinoPageRoute(
        builder: (context) => const NavigationScreen(),
        settings: settings

      );
    case "/thirdScreen":
      return CupertinoPageRoute(
        builder: (context) => const ThirdScreen(),
        settings: settings

      );
    default:
      return null;
  }
}
