import 'package:flutter/material.dart';
import '../models/planets_add_model.dart';
import 'coloers.dart';

class PlanetsCartCard extends StatefulWidget {
  const PlanetsCartCard({super.key, required this.item});
  final plantsViewModel? item;

  @override
  State<PlanetsCartCard> createState() => _PlanetsCartCardState();
}

class _PlanetsCartCardState extends State<PlanetsCartCard> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColoer,
      ),
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.only(left: 10),
      height: 100,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(widget.item!.image!),
              height: 75,
            ),
          ),
          Container(
            width: 250,
            margin: const EdgeInsets.only(
              left: 20,
              top: 15,
              bottom: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item!.title!,
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: mainColor,
                      size: 25,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.item!.desc!,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      width: 90,
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: mainColor)),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    itemCount > 1 ? itemCount -= 1 : {};
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: mainColor,
                                  size: 15,
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            child: Text(
                              '$itemCount',
                              style: TextStyle(color: mainColor, fontSize: 14),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: mainColor)),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    itemCount += 1;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: mainColor,
                                  size: 15,
                                )),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      '₹200.00',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
