import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(Icons.add)),
    );
  }
}
