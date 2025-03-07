import 'dart:math';

import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

Widget meterRadial(double value) {
  double bmi = (Variables.weight) / pow(((Variables.height) / 100), 2);
  String bmiText = bmi.toStringAsFixed(1);

  double thickness = 30;
  return SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 1000,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 16,
        maximum: 33,
        startAngle: 170,
        endAngle: 10,
        showLabels: false,
        showTicks: false,
        axisLineStyle: AxisLineStyle(thickness: thickness),
        ranges: [
          GaugeRange(
            startValue: 16,
            endValue: 18.5,
            startWidth: thickness,
            endWidth: thickness,
            color: Colors.lightBlue,
          ),
          GaugeRange(
            startValue: 18.5,
            endValue: 24.9,
            startWidth: thickness,
            endWidth: thickness,
            color: Colors.green,
          ),
          GaugeRange(
            startValue: 24.9,
            endValue: 29.9,
            startWidth: thickness,
            endWidth: thickness,
            color: Colors.yellowAccent,
          ),
          GaugeRange(
            startValue: 29.9,
            endValue: 33,
            startWidth: thickness,
            endWidth: thickness,
            color: Colors.redAccent,
          ),
        ],
        pointers: <GaugePointer>[
          NeedlePointer(
            value: value,
            needleLength: 0.7,
            needleColor: Colors.white,
            tailStyle: TailStyle(),
            knobStyle: KnobStyle(color: Colors.orangeAccent),
          ),
        ],
        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: SizedBox(
              child: Text(
                bmiText,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            angle: 90,
            positionFactor: 0.5,
          ),
        ],
      ),
    ],
  );
}
