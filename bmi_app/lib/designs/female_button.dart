import 'dart:ui';

import 'package:flutter/material.dart';

class FemaleButton extends StatefulWidget {
  final bool hasSelected;
  final VoidCallback onPressed;

  const FemaleButton({
    super.key,
    required this.hasSelected,
    required this.onPressed,
  });

  @override
  State<FemaleButton> createState() => _FemaleButtonState();
}

class _FemaleButtonState extends State<FemaleButton> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * (0.225),
          width: MediaQuery.of(context).size.width / 2.25,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: ElevatedButton(
                onPressed: widget.onPressed,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      width: widget.hasSelected ? 1 : 0,
                      color:
                          widget.hasSelected
                              ? Colors.blueAccent
                              : Colors.transparent,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.female,
                      size: MediaQuery.of(context).size.width * (0.3),
                      color: Colors.pinkAccent,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
