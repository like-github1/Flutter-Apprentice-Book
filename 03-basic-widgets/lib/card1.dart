// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
class Card1 extends StatelessWidget {
  const Card1({Key?key}):super(key: key);
  // 1
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(16),
      // 2
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
        image: AssetImage('assets/mag1.png'),
        fit: BoxFit.cover,

      ),
      
      ),
      child: Stack(
        children: [
          Text(category, style: FooderlichTheme.darkTextTheme.bodyLarge),
          Positioned (top :20, child: Text(title,
           style: FooderlichTheme.darkTextTheme.bodySmall,)),
          Positioned(
            bottom: 30,
              right: 0,
            child: 
            Text(description, 
            style: FooderlichTheme.darkTextTheme.displayMedium,)),
          Positioned(
              bottom: 10,
              right: 0,
               child: 
               Text(chef,style: FooderlichTheme.darkTextTheme.displayMedium,)),
        ],
      ),
      
    );
  }
}