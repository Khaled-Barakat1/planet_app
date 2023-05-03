import 'package:flutter/material.dart';
import '../components/coloers.dart';

import '../screens/home_screens/home_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int page = 0;
  List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 50, offset: Offset(0, 10)),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
          child: BottomNavigationBar(
            iconSize: 35,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: mainColor,
            unselectedItemColor: navBarColor,
            onTap: (index) {
              setState(() {
                page = index;
              });
            },
            currentIndex: page,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.image_search_outlined), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt), label: "WishList"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ),
      ),
      body: pages[page],
    );
  }
}
/**/
