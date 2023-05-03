import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../components/coloers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../components/main_icon_button.dart';
import '../../components/secondary_botton.dart';
import '../../models/planets_model.dart';
import 'my_cart.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key, this.item});
  final PlanetsModel? item;

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreen();
}

class _PlantDetailsScreen extends State<PlantDetailsScreen> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    final sizes = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
              width: MediaQuery.of(context).size.width * .25,
              margin: const EdgeInsets.only(bottom: 5, top: 5),
              child: MainIconButton(
                icon: Icons.favorite_outline,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: sizes.height * 0.05,
                ),
                color: navBarColor,
                height: sizes.height * 0.45,
                width: sizes.width,
                child: Image(
                  image: AssetImage(widget.item!.image!),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: sizes.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  height: sizes.height * 0.60,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 30, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Snake Plant',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: mainColor),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Text(
                                              '₹${widget.item!.price!}0',
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            child: RatingBar(
                                              ignoreGestures: true,
                                              itemSize: 16,
                                              initialRating:
                                                  widget.item!.rating!,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              onRatingUpdate: (double value) {},
                                              ratingWidget: RatingWidget(
                                                  full: const Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  half: const Icon(
                                                    Icons.star_half,
                                                    color: Colors.amber,
                                                  ),
                                                  empty: const Icon(
                                                    Icons.star_border,
                                                    color: Colors.amber,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 90,
                                  height: 30,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: mainColor),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount > 1
                                                  ? itemCount -= 1
                                                  : {};
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: secondaryColoer,
                                            size: 16,
                                          )),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        child: Text(
                                          '$itemCount',
                                          style: TextStyle(
                                              color: secondaryColoer,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount += 1;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: secondaryColoer,
                                            size: 16,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Text(
                              'About',
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              widget.item!.about!,
                              style: TextStyle(color: mainColor, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 150,
                              child: Row(children: [
                                SizedBox(
                                  height: 60,
                                  child: MainIconButton(
                                    iconSize: 35,
                                    icon: widget.item!.fastInfo![index]['icon'],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 5, top: 15, bottom: 15),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${widget.item!.fastInfo![index]['title']}',
                                        style: const TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '${widget.item!.fastInfo![index]['val']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: mainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            );
                          },
                          itemCount: widget.item!.fastInfo!.length,
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor: secondaryColoer,
                                  ),
                                  child: Icon(Icons.shopping_cart_outlined,
                                      color: mainColor),
                                )),
                            SizedBox(
                              height: 50,
                              width: sizes.width * 0.7,
                              child: SecndBotton(
                                goto: const MyCartScreen(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(right: 5),
                                        child: const Icon(
                                            Icons.shopping_bag_outlined)),
                                    const Text('BUY NOW')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
