import 'package:get_it/get_it.dart';
import 'package:kwg/network/NetworkClient.dart';

import 'AppRoute.dart';

GetIt? locator;

class ServiceLocator {
  static GetIt? getInstance() {
    if (locator == null) {
      locator = GetIt.instance;
      setupLocator();
    }
    return locator;
  }

  static setupLocator() {
    final baseUrl = 'https://jsonplaceholder.typicode.com/';
    locator!.registerLazySingleton(() => AppRoute());
    locator!.registerLazySingleton(() => NetworkClient(baseUrl));
  }
}
