import 'package:flutter/material.dart';

class ImcTextField extends StatelessWidget {
  ImcTextField({
    this.label,
    this.iconData,
    this.controller
  });

  final String label;
  final IconData iconData;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(iconData),
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      controller: controller,
    );
  }
}
