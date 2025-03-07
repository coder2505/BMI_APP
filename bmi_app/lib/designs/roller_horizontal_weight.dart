import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import "package:numberpicker/numberpicker.dart";

class RollerHorizontalWeight extends StatefulWidget {
  const RollerHorizontalWeight({super.key});

  @override
  State<RollerHorizontalWeight> createState() => _RollerHorizontalWeightState();
}

class _RollerHorizontalWeightState extends State<RollerHorizontalWeight> {
  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      axis: Axis.horizontal,
      minValue: 1,
      maxValue: 300,
      value: Variables.weight,
      itemHeight: MediaQuery.of(context).size.height * 0.1,
      itemCount: 1,
      selectedTextStyle: TextStyle(fontSize: 48),
      textStyle: TextStyle(fontSize: 48),
      haptics: true,

      onChanged: (value) {
        setState(() {
          Variables.weight = value;
        });
      },
    );
  }
}
