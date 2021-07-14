import 'package:flutter_package/main.dart';
import 'package:flutter_package/views/alert/alert_screen.dart';
import 'package:flutter_package/views/main/main_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = '/main';
  static final routes = [
    GetPage(name: MainScreen.routeName, page: () => MainScreen()),
    GetPage(name: '/alert', page: () => AlertScreen())
  ];
}