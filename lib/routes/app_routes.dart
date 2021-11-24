part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const LOGIN = _Paths.LOGIN;
  static const STORAGE = _Paths.STORAGE;
  static const EMPLOYEES = _Paths.EMPLOYEES;
  static const HISTORY = _Paths.HISTORY;
  static const SETTINGS = _Paths.SETTINGS;
}

abstract class _Paths {
  static const LOGIN = '/login';
  static const STORAGE = '/storage';
  static const EMPLOYEES = '/employees';
  static const HISTORY = '/history';
  static const SETTINGS = '/settings';
}
