import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import "package:numberpicker/numberpicker.dart";

class RollerHeight extends StatefulWidget {
  final int startHeight;

  const RollerHeight({super.key, required this.startHeight});

  int get getStartHeight {
    return startHeight;
  }

  int get getheight {
    return _RollerHeightState().currentHeight;
  }

  @override
  State<RollerHeight> createState() => _RollerHeightState();
}

class _RollerHeightState extends State<RollerHeight> {
  int currentHeight = 150;

  int get height {
    return currentHeight;
  }

  @override
  void initState() {
    super.initState();
    currentHeight = widget.startHeight;
  }

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      minValue: 100,
      maxValue: 300,
      value: currentHeight,
      itemWidth: 75,
      itemHeight: 55,
      selectedTextStyle: TextStyle(fontSize: 36),
      textStyle: TextStyle(fontSize: 28),
      haptics: true,
      onChanged: (value) {
        setState(() {
          currentHeight = value;
          Variables().setH(value);
        });
      },
    );
  }
}
