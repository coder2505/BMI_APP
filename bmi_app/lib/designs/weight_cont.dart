import 'package:bmi_app/designs/roller_horizontal_weight.dart';
import 'package:bmi_app/designs/subtract_button.dart';
import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import './add_button.dart';

class WeightCont extends StatefulWidget {
  const WeightCont({super.key});

  @override
  State<WeightCont> createState() => _WeightContState();
}

class _WeightContState extends State<WeightCont> {
  void decrementWeight() {
    setState(() {
      if ((Variables.weight) > 0) Variables().setW(Variables.weight - 1);
    });
  }

  void incrementWeight() {
    setState(() {
      Variables().setW(Variables.weight + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0X39000000),
            borderRadius: BorderRadius.circular(20),
          ),
          height: MediaQuery.of(context).size.height * (0.225),
          width: MediaQuery.of(context).size.width / 2.25,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Weight(in Kg)", style: TextStyle(fontSize: 17)),
                RollerHorizontalWeight(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubtractButton(onPressed: decrementWeight),
                    AddButton(onPressed: incrementWeight),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
