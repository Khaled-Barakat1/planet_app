import 'package:flutter/material.dart';

class PlanetsModel {
  String? image;
  String? about;
  String? name;
  String? catagory;
  double? price;
  String? slogan;
  double? rating;
  List<Map>? fastInfo;

  PlanetsModel({
    this.image,
    this.name,
    this.catagory,
    this.price,
    this.about,
    this.slogan,
    this.rating,
    this.fastInfo,
  });
}

List<PlanetsModel> planets = [
  PlanetsModel(
    fastInfo: [
      {'icon': Icons.height, 'title': 'Height', 'val': '8.2\"'},
      {'icon': Icons.water_drop_outlined, 'title': 'Humidly', 'val': '52%'},
      {'icon': Icons.tablet, 'title': 'Height', 'val': '8.2\"'},
    ],
    image: 'assets/snake_plant.png',
    name: "Snake Plant",
    catagory: 'indoor',
    price: 80.00,
    rating: 4,
    slogan: 'it\' spines don\'t grow.',
    about:
        """The snake plant, commonly referred to as mother-in-low\'s tongue, is a resillient succulent that can grow anywhere between 6 inches to several feet. in addition to providing a bit of ambiance, snake plants have a number of health benefit, including: filter indoor air. remove toxic pollutants.""",
  ),
  PlanetsModel(
    fastInfo: [
      {'icon': Icons.height, 'title': 'Height', 'val': '8.2\"'},
      {'icon': Icons.water_drop_outlined, 'title': 'Humidly', 'val': '52%'},
      {'icon': Icons.tablet, 'title': 'Height', 'val': '8.2\"'},
    ],
    image: 'assets/Palm.png',
    name: "Palm",
    catagory: 'indoor',
    price: 480.00,
    rating: 3.5,
    slogan: 'it\' spines don\'t grow.',
    about:
        """The snake plant, commonly referred to as mother-in-low\'s tongue, is a resillient succulent that can grow anywhere between 6 inches to several feet. in addition to providing a bit of ambiance, snake plants have a number of health benefit, including: filter indoor air. remove toxic pollutants.""",
  ),
  PlanetsModel(
    fastInfo: [
      {'icon': Icons.height, 'title': 'Height', 'val': '8.2\"'},
      {'icon': Icons.water_drop_outlined, 'title': 'Humidly', 'val': '52%'},
      {'icon': Icons.tablet, 'title': 'Height', 'val': '8.2\"'},
    ],
    image: 'assets/snake_plant.png',
    name: "Snake Plant",
    catagory: 'indoor',
    price: 80.00,
    rating: 4,
    slogan: 'it\' spines don\'t grow.',
    about:
        """The snake plant, commonly referred to as mother-in-low\'s tongue, is a resillient succulent that can grow anywhere between 6 inches to several feet. in addition to providing a bit of ambiance, snake plants have a number of health benefit, including: filter indoor air. remove toxic pollutants.""",
  ),
  PlanetsModel(
    fastInfo: [
      {'icon': Icons.height, 'title': 'Height', 'val': '8.2\"'},
      {'icon': Icons.water_drop_outlined, 'title': 'Humidly', 'val': '52%'},
      {'icon': Icons.tablet, 'title': 'Height', 'val': '8.2\"'},
    ],
    image: 'assets/snake_plant.png',
    name: "Snake Plant",
    catagory: 'indoor',
    price: 80.00,
    rating: 4,
    slogan: 'it\' spines don\'t grow.',
    about:
        """The snake plant, commonly referred to as mother-in-low\'s tongue, is a resillient succulent that can grow anywhere between 6 inches to several feet. in addition to providing a bit of ambiance, snake plants have a number of health benefit, including: filter indoor air. remove toxic pollutants.""",
  ),
];
