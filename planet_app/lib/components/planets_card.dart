import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:planet_app/components/coloers.dart';
import 'package:planet_app/models/planets_model.dart';

class PlanetsCard extends StatelessWidget {
  PlanetsCard({super.key, required this.item});

  PlanetsModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.transparent),
      child: Stack(children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 220,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: secondaryColoer,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: ClipPath(
                    clipper: WaveClipperOne(),
                    child: Container(
                      height: 170,
                      width: 180,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(25)),
                        color: navBarColor,
                      ),
                      child: Container(),
                    ),
                  ),
                ),
                Positioned(
                    left: 10,
                    bottom: 10,
                    child: Container(
                      width: 160,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${item.catagory}',
                                style:
                                    TextStyle(color: mainColor, fontSize: 15),
                              ),
                              Text(
                                '${item.name}',
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 2, right: 10),
                            height: 20,
                            decoration: BoxDecoration(
                                color: HexColor('#E9FBF0'),
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              "₹${item.price}",
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
            left: 10,
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.50,
              child: Image.asset(item.image!),
            )),
      ]),
    );
  }
}
