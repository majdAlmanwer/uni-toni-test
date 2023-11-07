// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(

      {super.key,
      required this.controller,
      this.color,
      this.hintText,
      required this.onChanged});
  TextEditingController controller;
  Color? color;
  String? hintText;
  Function(String)? onChanged;

      {super.key, required this.controller, this.color, this.hintText});
  TextEditingController controller;
  Color? color;
  String? hintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Container(
            width: getPercentScreenWidth(90),
            height: getPercentScreenHeight(8),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              onChanged: widget.onChanged,
             controller: widget.controller,
              cursorRadius: Radius.circular(2),
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: widget.hintText),
            ),
          ),
        ),
      ],
    );
  }
}
