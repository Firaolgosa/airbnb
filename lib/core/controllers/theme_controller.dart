import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../constants/air_theme.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  bool get isDarkMode => _loadTheme();

  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void changeTheme(ThemeData theme) => Get.changeTheme(theme);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

  void toggleTheme() {
    Get.changeThemeMode(_loadTheme() ? ThemeMode.light : ThemeMode.dark);
    saveTheme(!_loadTheme());
    update();
  }
}