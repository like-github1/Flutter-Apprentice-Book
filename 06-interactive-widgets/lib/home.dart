import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';
import 'screens/explore_screen.dart';
import 'screens/grocery_screen.dart';
import 'screens/recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  // int _selectedIndex = 0;
  //// No longer need the SelectedTab index it is replaced by Provider state managemnt class

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    // TODO: Replace with grocery screen
    GroceryScreen()
  ];

//this funaction code is replaced by Provider Method
  // void _onItemTapped(int index) {
  //   print(index);
  //   setState(() {
  //     _selectedIndex = index;
  //   });

  // }

  @override
  Widget build(BuildContext context) {
    // TODO: Wrap inside a Consumer Widget
    return Consumer<TabManager>(builder: (context, TabManager, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        // body: pages[TabManager.selectedTab],
        body: IndexedStack(
          index: TabManager.selectedTab,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: TabManager.selectedTab,

          onTap: (index) => TabManager.goToTab(index),
          //  (index){
          //   TabManager.goToTab(index);
          // },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'To Buy',
            ),
          ],
        ),
      );
    });
  }
}
