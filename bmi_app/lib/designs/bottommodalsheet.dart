import 'dart:math';

import 'package:bmi_app/designs/radialmeter.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';

void showsheet(
  // function.
  BuildContext context, {
  required int weight,
  required int height,
}) {
  double bmi = (weight) / pow(((height) / 100), 2);
  String desc = '';
  // String drawbacks =
  //     "BMI is not a accurate repsresentation for older people and people with high muscle mass";

  if (bmi < 18.5) {
    desc =
        "You’re on the lighter side ! "
        "If you’re feeling low on energy or getting tired easily, "
        "adding more protein, healthy fats, and carbs to your diet can help. Try snacking more often and strength training to build muscle!";
  } else if (bmi > 18.5 && bmi <= 24.9) {
    desc =
        "You’re in the sweet spot ! A balanced diet and staying active will keep you feeling great"
        " Keep up the good work and listen to your body’s needs!";
  } else if (bmi > 24.9 && bmi <= 29.9) {
    desc =
        "You’re slightly above the ideal range, but no worries! "
        "Small changes like cutting back on sugar, getting more steps in, "
        "and staying hydrated can make a big difference over time";
  } else {
    desc =
        "Your BMI is on the higher side. "
        "If you’re feeling low on energy or noticing health changes, "
        "focusing on a balanced diet and some fun workouts (dancing, swimming, or walking) "
        "could help a lot!";
  }

  double takenScreenSize = 0.7;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height * (takenScreenSize),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 41, 70),
          borderRadius: BorderRadius.circular(10),
        ),

        child: DraggableScrollableSheet(
          initialChildSize: 1,
          builder: (_, controller) {
            return Column(
              children: [
                Text("Your BMI is:", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                SizedBox(
                  height:
                      (MediaQuery.of(context).size.height * (takenScreenSize)) *
                      (0.45),
                  child: meterRadial(bmi),
                ),
                BlurText(
                  text: desc,
                  textStyle: TextStyle(
                    fontSize:
                        (MediaQuery.of(context).size.height *
                            (takenScreenSize)) *
                        0.025,
                  ),
                  textAlignment: TextAlignment.center,
                  duration: Duration(milliseconds: 100),
                ),
              ],
            );
          },
        ),
      );
    },
  );
}
