import 'package:flutter/material.dart';
import 'package:planet_app/components/coloers.dart';

class InfoInputField extends StatelessWidget {
  String? hintText;
  bool isPasword;
  IconData? icon;

  InfoInputField(
    this.hintText,
    this.isPasword,
    this.icon, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextFormField(
        cursorColor: mainColor,
        obscureText: isPasword,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: mainColor),
          ),
          prefixIcon: Icon(
            icon,
            color: mainColor,
          ),
          hintStyle: TextStyle(color: mainColor, fontWeight: FontWeight.bold),
          fillColor: secondaryColoer,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
