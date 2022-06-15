import 'services/navigation_sevice.dart';
import 'services/rmq_service.dart';
import 'package:r_iot/viewmodels/subscribe_rmq_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => RmqService());
  locator.registerLazySingleton(() => SubscribeRmqViewModel());
}