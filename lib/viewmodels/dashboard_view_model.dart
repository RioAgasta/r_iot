import 'package:r_iot/viewmodels/base_model.dart';
import 'package:r_iot/locator.dart';
import 'package:r_iot/services/navigation_sevice.dart';

class DashboardViewModel extends BaseModel{
  final NavigationService _navigationService = locator<NavigationService>();

  void navigationToVoid(routeName){
    _navigationService.navigateTo(routeName);
  }
}