import 'dart:math';
import 'package:flutter/material.dart';
import '../models/planets_add_model.dart';
import 'coloers.dart';

class PlanetsCardAdd extends StatelessWidget {
  PlanetsCardAdd({super.key, required this.item});

  plantsViewModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 80,
      child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(item.image!),
              height: 60,
              width: 60,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.title}',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${item.desc}',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ]),
      
    );
  }
}
