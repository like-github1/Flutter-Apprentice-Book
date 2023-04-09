import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key?key}):super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: lines_longer_than_80_chars
        title: Text('Fooderlich', 
        style: Theme.of(context).textTheme.headline6,
         //if this widget Contain any Theme use that theme otherwise use 
         //Apptheme That are defined in Materialapp Theme Property

        )
      ),
      body: Center(child: Text(
          'Let\'s get cooking 👩‍🍳',
          style: Theme.of(context).textTheme.headline1,
          )
    ));
  }
}