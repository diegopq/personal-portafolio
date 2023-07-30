class Routes {
  /// home route data with the name of `home` and path `\home`
  static final RouteData home = RouteData(
    name: 'home',
    path: 'home',
  );
}

class RouteData {
  ///Data of the route
  RouteData({required this.name, required this.path});

  final String name;
  final String path;
}
