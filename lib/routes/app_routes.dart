part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const LOGIN = _Paths.LOGIN;
  static const SETTINGS = _Paths.SETTINGS;
  static const EMPLOYEES = _Paths.EMPLOYEES;
  static const STORAGE = _Paths.STORAGE;
  static const HOMEPAGE = _Paths.HOMEPAGE;


}

abstract class _Paths {
  static const LOGIN = '/login';
  static const SETTINGS = '/settings';
  static const EMPLOYEES = '/employees';
  static const STORAGE = '/storage';
  static const HOMEPAGE = '/homepage';

}
