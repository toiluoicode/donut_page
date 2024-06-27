
import 'package:application_donuts/pages/panacake_tab.dart';
import 'package:application_donuts/pages/pizza_tab.dart';
import 'package:application_donuts/pages/smoothie_tab.dart';
import 'package:application_donuts/util/my_tab.dart';
import 'package:flutter/material.dart';

import 'burger_tab.dart';
import 'donut_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800]),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "I want to eat ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            // tab bar view
            Expanded(
                child: TabBarView(
                  children: [
                    DonutTab(),
                    BurgerTab(),
                    PanacakeTab(),
                    PizzaTab(),
                    SmoothieTab()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
