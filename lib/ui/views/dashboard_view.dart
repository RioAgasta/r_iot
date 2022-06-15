import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:r_iot/constants/route_name.dart';
import 'package:r_iot/ui/shared/shared_style.dart';
import 'package:r_iot/ui/shared/ui_helper.dart';
import 'package:r_iot/ui/widgets/button_widget.dart';
import 'package:r_iot/viewmodels/dashboard_view_model.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Apps with IoT'
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                verticalSpaceLarge,
                Text("RabbitMQ", style: titleTextStyle),
                verticalSpaceTiny,
                Text("Publish & Subscribe", style: titleTextStyle),
                verticalSpaceLarge,
                Image.asset("assets/Logo.png",
                  width: size.width*0.3,
                  height: size.width*0.3,),
                ButtonWidget(
                  title: 'Publish',
                  onPressedFunction: (){
                    model.navigationToVoid(publishRmqViewRoute);
                  },
                  bgColor: Colors.lightBlueAccent,
                ),
                verticalSpaceMedium,
                ButtonWidget(
                  title: 'Subscribe',
                  onPressedFunction: (){
                    model.navigationToVoid(subscribeRmqViewRoute);
                  },
                  bgColor: Colors.lightBlueAccent,
                ),
              ]
            )
          )
        )
      )
    );
  }
}