import 'package:flutter/material.dart';
import 'coloers.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: mainColor,
      borderRadius: BorderRadius.circular(15),
      elevation: 5,
      shadowColor: Colors.black,
      child: TextField(
        decoration: InputDecoration(
          iconColor: mainColor,
          suffixIcon: Icon(
            Icons.mic,
            color: mainColor,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: mainColor,
          ),
          contentPadding: const EdgeInsets.all(20),
          fillColor: secondaryColoer,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: 'Search Plant',
        ),
      ),
    );
  }
}
