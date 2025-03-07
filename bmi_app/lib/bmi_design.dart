import 'package:bmi_app/designs/age_design.dart';
import 'package:bmi_app/designs/female_button.dart';
import 'package:bmi_app/variables.dart';
import 'package:flutter/material.dart';
import './designs/male_button.dart';
import './designs/roller_height.dart';
import './designs/weight_cont.dart';
import './designs/bottommodalsheet.dart';

class BmiDesign extends StatefulWidget {
  const BmiDesign({super.key});

  @override
  State<BmiDesign> createState() => _BmiDesignState();
}

class _BmiDesignState extends State<BmiDesign> {
  bool maleButtonSelected = true;
  bool femaleButtonSelected = false;

  void femaleClicked() {
    setState(() {
      maleButtonSelected = false;
      femaleButtonSelected = true;
    });
  }

  void maleClicked() {
    setState(() {
      maleButtonSelected = true;
      femaleButtonSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFF1B1B1B), Color(0XFF141f26)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0XFF1B1B1B), Color.fromARGB(255, 0, 35, 59)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaleButton(
                    hasSelected: maleButtonSelected,
                    onpressed: maleClicked,
                  ),
                  FemaleButton(
                    hasSelected: femaleButtonSelected,
                    onPressed: femaleClicked,
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0X4f000000),
                ),
                height: MediaQuery.of(context).size.height * (0.23),
                child: const Row(
                  children: [
                    SizedBox(width: 25),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Height (in cm)",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: RollerHeight(startHeight: 150),
                    ),
                    SizedBox(width: 25),
                  ],
                ),
              ),

              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [WeightCont(), AgeDesign()],
              ),

              SizedBox(height: 0),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 54, 126, 57),
                ),

                child: IconButton(
                  onPressed: () {
                    return showsheet(
                      context,
                      height: Variables.height,
                      weight: Variables.weight,
                    );
                  },
                  icon: Icon(Icons.done),
                  color: Colors.black,
                  iconSize: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
