import 'package:flutter/material.dart';
import 'package:airbnb/core/controllers/routes.dart';
import 'package:get_storage/get_storage.dart';
import 'core/controllers/injections.dart';
import 'core/constants/air_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Airbnb Eagle',
      theme: AirTheme.lightTheme,
      darkTheme: AirTheme.darkTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
