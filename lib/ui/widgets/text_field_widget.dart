import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:r_iot/ui/shared/shared_style.dart';
import 'package:r_iot/ui/shared/ui_helper.dart';

class TextFieldWidget extends StatelessWidget{
  final TextEditingController controller;
  final String label;

  const TextFieldWidget({
    Key key,
    @required this.controller,
    @required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        padding: fieldPadding,
        width: screenWidthPercent(context, multipleBy: 0.9),
      child: TextField(
        enabled: true,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent)
          ),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey)
        )
      )
    );
  }
}