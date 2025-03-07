import 'package:bmi_app/designs/roller_horizontal_age.dart';
import 'package:bmi_app/designs/subtract_button.dart';
import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import './add_button.dart';

class AgeDesign extends StatefulWidget {
  const AgeDesign({super.key});

  @override
  State<AgeDesign> createState() => _AgeDesignState();
}

class _AgeDesignState extends State<AgeDesign> {
  int age = Variables.age;

  void decrementAge() {
    setState(() {
      if (Variables.age > 0) Variables.age -= 1;
    });
  }

  void incrementAge() {
    setState(() {
      Variables.age += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0X37000000),
            borderRadius: BorderRadius.circular(20),
          ),
          height: MediaQuery.of(context).size.height * (0.225),
          width: MediaQuery.of(context).size.width / 2.25,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Age(in years)", style: TextStyle(fontSize: 17)),
                RollerHorizontalAge(), // -> age text label
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubtractButton(onPressed: decrementAge),
                    AddButton(onPressed: incrementAge),
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
