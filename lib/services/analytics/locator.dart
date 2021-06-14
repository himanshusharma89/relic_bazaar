import 'package:get_it/get_it.dart';
import 'analytic_service.dart';

GetIt locator = GetIt.instance;
void setUpLocator(){
  locator.registerLazySingleton(() => AnalyticsService());
}