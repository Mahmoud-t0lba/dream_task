part of 'app_routes.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const carDetails = _Paths.carDetails;
}

abstract class _Paths {
  static const home = '/home';
  static const carDetails = '/carDetails';
}
