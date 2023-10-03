import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final contentPadding;
  final dynamic suffixIcon;
  final  dynamic Controller;

  final validator;

  const TextForm({
    super.key,
    this.hintText,
    this.labelText,
    this.contentPadding,
    this.suffixIcon,
    this.validator, this.Controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.1)),
            contentPadding: EdgeInsets.all(0.10),
            suffixIcon: suffixIcon,
            labelText: labelText,
            labelStyle: TextStyle(color: Color.fromARGB(255, 2, 3, 65))),
        validator: validator,
        controller: Controller,
      ),

    );
  }
}
