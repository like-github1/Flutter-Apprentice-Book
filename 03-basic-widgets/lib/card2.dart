import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';

import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          )),
      child: Column(
        children: [
          AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg')),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.displaySmall,
                    )),
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothies',
                          style: FooderlichTheme.lightTextTheme.headlineLarge,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
