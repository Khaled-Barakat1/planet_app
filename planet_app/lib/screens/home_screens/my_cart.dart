import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planet_app/components/secondary_botton.dart';
import '../../components/coloers.dart';
import '../../components/planets_cart_card.dart';
import '../../models/planets_add_model.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(
              color: mainColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 35,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              margin: const EdgeInsets.only(left: 15, top: 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: PlanetsCartCard(
                            item: plantsView[index],
                          ),
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 35, bottom: 40),
                decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 50,
                          offset: Offset(0, 10)),
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal:',
                                style:
                                    TextStyle(color: mainColor, fontSize: 17),
                              ),
                              Text(
                                '₹800.00',
                                style:
                                    TextStyle(color: mainColor, fontSize: 17),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shiping Cost:',
                                style:
                                    TextStyle(color: mainColor, fontSize: 17),
                              ),
                              Text(
                                '₹50.00',
                                style:
                                    TextStyle(color: mainColor, fontSize: 17),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '	₹850.00',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SecndBotton(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Place Your Order',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
