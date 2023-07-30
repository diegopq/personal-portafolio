import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/app/core/routes/route_names.dart';

class AppRouter {
  AppRouter({
    List<NavigatorObserver>? navigationObservers,
  }) : _observers = navigationObservers;

  final List<NavigatorObserver>? _observers;

  late final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: Routes.home.path,
    observers: _observers,
    routes: [],
  );
}
