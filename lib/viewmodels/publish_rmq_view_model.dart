import 'package:flutter/cupertino.dart';
import 'package:r_iot/locator.dart';
import 'package:r_iot/services/rmq_service.dart';
import 'package:r_iot/viewmodels/base_model.dart';
import 'package:r_iot/viewmodels/subscribe_rmq_view_model.dart';

class PublishViewModel extends BaseModel{
  TextEditingController guidController = TextEditingController();

  final RmqService _rmqService = locator<RmqService>();

  bool index = false;


  void controlLamp(bool index){
    String guid = guidController.text;

    if (index){
      _rmqService.publish('$guid#1');
      print('[Lampu Nyala] $guid');
    } else{
      _rmqService.publish('$guid#0');
      print('[Lampu Mati] $guid');
    }
  }
}