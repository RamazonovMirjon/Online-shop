
import 'package:flutter/material.dart';
import 'package:tech/screens/onboarding.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const OnboardingPage());

      default:
    }
  }
}
