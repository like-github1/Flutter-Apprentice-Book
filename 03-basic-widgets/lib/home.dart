import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //Creating Homepage
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
  void _OnItemsTabed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // ignore: lines_longer_than_80_chars
            title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.titleLarge,
          //if this widget Contain any Theme use that theme otherwise use
          //Apptheme That are defined in Materialapp Theme Property
        )),
        body: pages.elementAt(_selectedIndex),
        // 4
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.redAccent,
            elevation: 0,
            iconSize: 18,
            selectedFontSize: 20,
            selectedIconTheme: const IconThemeData(
                color: Color.fromARGB(255, 0, 38, 255), size: 40),
            selectedItemColor: Colors.amberAccent,
            //the selected Icon size
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            unselectedIconTheme: IconThemeData(
              color: Colors.deepOrangeAccent,
            ),
            unselectedItemColor: Colors.deepOrangeAccent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            mouseCursor:
                SystemMouseCursors.grab, //when runing on web like chrome
            //which Item is selected or highlited
            // 5
            currentIndex: _selectedIndex,
            onTap: _OnItemsTabed,

            // 6
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card2'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card3'),
            ]));
  }
}
