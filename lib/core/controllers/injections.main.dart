part of 'injections.dart';

final GetIt getIt = GetIt.instance;

void initializeDependencies() {
  // Services
  getIt.registerLazySingleton<NotificationService>(() => NotificationService());

  // Controllers
  getIt.registerLazySingleton<ThemeController>(() => ThemeController());

}