import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_button/group_button.dart';
import 'package:planet_app/components/coloers.dart';
import 'package:planet_app/components/plantes_card_add.dart';
import 'package:planet_app/screens/home_screens/plant_details.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../components/main_icon_button.dart';
import '../../components/planets_card.dart';
import '../../components/search_bar.dart';
import '../../models/planets_model.dart';
import '../../models/planets_add_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * .25,
        leading: Container(
            margin: const EdgeInsets.only(bottom: 5, top: 5),
            child: const CircleAvatar(
                backgroundImage: AssetImage('assets/cactus.jpg'))),
        actions: [
          Container(
              width: MediaQuery.of(context).size.width * .25,
              margin: const EdgeInsets.only(bottom: 5, top: 5),
              child: MainIconButton(
                icon: Icons.shopping_cart_outlined,
              )),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Text(
                  "Let's find your plants!",
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 20), child: SearchBar()),
              const SizedBox(
                height: 15,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 25, left: 5),
                  child: GroupButton(
                    options: GroupButtonOptions(
                      unselectedColor: Colors.transparent,
                      spacing: 2,
                      borderRadius: BorderRadius.circular(25),
                      unselectedTextStyle:
                          TextStyle(color: Colors.black38, fontSize: 13),
                      selectedTextStyle:
                          TextStyle(color: mainColor, fontSize: 13),
                      selectedColor: secondaryColoer,
                    ),
                    
                    buttons: const ['Recommended', 'Top', 'Indoor', 'Outdoor'],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.width * .70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();
                        sharedPreferences.setBool("isLogin", false);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PlantDetailsScreen(item: planets[index]),
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: PlanetsCard(
                          item: planets[index],
                        ),
                      ),
                    );
                  },
                  itemCount: planets.length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Recently Viewed",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PlanetsCardAdd(
                      item: plantsView[index],
                    );
                  },
                  itemCount: plantsView.length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
