import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import "package:numberpicker/numberpicker.dart";

class RollerHorizontalAge extends StatefulWidget {
  const RollerHorizontalAge({super.key});

  @override
  State<RollerHorizontalAge> createState() => _RollerAgeHorizontal();
}

class _RollerAgeHorizontal extends State<RollerHorizontalAge> {
  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      axis: Axis.horizontal,
      minValue: 1,
      maxValue: 100,
      value: Variables.age,
      itemHeight: MediaQuery.of(context).size.height * 0.1,
      itemCount: 1,
      selectedTextStyle: TextStyle(fontSize: 48),
      textStyle: TextStyle(fontSize: 48),
      haptics: true,

      onChanged: (value) {
        setState(() {
          Variables.age = value;
        });
      },
    );
  }
}
